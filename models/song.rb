class Song < ActiveRecord::Base
  belongs_to :singer
  scope :ilike,    ->(query) { where("lyrics ilike :query", query: "%#{query}%") }

  scope :fulltext, ->(query, rank_method) do
     select('*')
    .select("ts_headline(lyrics, plainto_tsquery('#{query}')) as headline")
    .select("#{rank_method}(search_vector, plainto_tsquery('#{query}')) as rank")
    .where("plainto_tsquery('#{query}') @@ search_vector")
    .order('rank DESC')
  end

  scope :ts_rank,    ->(query) { fulltext(query, :ts_rank) }
  scope :ts_rank_cd, ->(query) { fulltext(query, :ts_rank_cd) }

  before_save :set_search_vector

  def set_search_vector
    clean_title  = self.class.sanitize(self.title)
    clean_singer = self.class.sanitize(self.singer.name)
    clean_lyrics = self.class.sanitize(self.lyrics)
    self.search_vector = self.class.connection.execute(
      "SELECT setweight(to_tsvector(#{clean_title}),  'A') ||
              setweight(to_tsvector(#{clean_singer}), 'B') ||
              setweight(to_tsvector(#{clean_lyrics}), 'D') as search_vector"
    ).first.fetch('search_vector')
  end

  def duration
    Time.at(self[:duration]).strftime('%M:%S')
  end

  def headline
    "...#{self[:headline]}..." if self[:headline]
  end
end
