class Album

attr_accessor :name, :genre, :artist_id
attr_reader :id

  def initialize(options)
    @id = options['id'].to_i
    @name = options['name']
    @genre = options['genre']
    @artist_id = options['artist_id']
  end

  def save()
    sql = "INSERT INTO album(name, genre, artist_id)
    values($1, $2, $3)
    RETURNING id"
    values = [@name, @genre, @artist_id]
    @id = SqlRunner.run(sql, values)[0]["id"].to_i()
  end
end
