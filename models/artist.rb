require_relative ('../db/sql_runner.rb')

class Artist

  attr_accessor :name
  attr_reader :id

  def initialize(options)
    @id = options['id'].to_i
    @name = options['name']
  end

  def save()
    sql = "INSERT INTO artist(name)
    VALUES($1)
    RETURNING *"
    values = [@name]
    @id = SqlRunner.run(sql, values)[0]["id"].to_1()
  end
end
