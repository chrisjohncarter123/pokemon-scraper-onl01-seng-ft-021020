class Pokemon
  attr_accessor :name, :type
  
  attr_reader :id, :db
  def initialize(name:, type:, db:, id:)
    @name = name
    @type = type
    @id = id
    @db = db
    
  end
  
  def save
    sql = <<-SQL
      INSERT INTO Pokemon (id, name, type)
      VALUES (?, ?, ?)
    SQL
    @db[:conn].execute(sql, self.id, self.name, self.type)
  #  @id = DB[:conn].execute("SELECT last_insert_rowid() FROM students")[0][0]
  end
end
