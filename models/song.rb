class Song < ActiveRecord::Base
  belongs_to :singer
  scope :fulltext, ->(query) { where("plainto_tsquery(:query) @@ to_tsvector(lyrics)", query: query) }
  scope :ilike,    ->(query) { where("lyrics ilike :query", query: "%#{query}%") }
  scope :rank,     ->(query) { fulltext(query).select("*, ts_rank(to_tsvector(lyrics), plainto_tsquery('#{query}')) as rank").order('rank DESC') }
  scope :rank_cd,  ->(query) { fulltext(query).select("*, ts_rank_cd(to_tsvector(lyrics), plainto_tsquery('#{query}')) as rank").order('rank DESC') }
  scope :headline, ->(query) { rank(query).select("ts_headline(lyrics, plainto_tsquery('#{query}'), 'ShortWord=3') as headline") }

  def duration
    Time.at(self[:duration]).strftime('%M:%S')
  end

  def headline
    "...#{self[:headline]}..." if self[:headline]
  end
end
