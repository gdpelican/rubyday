class Song < ActiveRecord::Base
  belongs_to :singer
  scope :ilike,    ->(query) { where("lyrics ilike :query", query: "%#{query}%") }

  scope :fulltext, ->(query, rank_method) do
     select('*')
    .select("ts_headline(lyrics, plainto_tsquery('#{query}')) as headline")
    .select("#{rank_method}(to_tsvector(lyrics), plainto_tsquery('#{query}')) as rank")
    .where("plainto_tsquery('#{query}') @@ to_tsvector(lyrics)")
    .order('rank DESC')
  end

  scope :ts_rank,    ->(query) { fulltext(query, :ts_rank) }
  scope :ts_rank_cd, ->(query) { fulltext(query, :ts_rank_cd) }

  def duration
    Time.at(self[:duration]).strftime('%M:%S')
  end

  def headline
    "...#{self[:headline]}..." if self[:headline]
  end
end
