class Pokemon
  attr_accessor :name, :type
  
  attr_reader :id, :db
  def initialize(name:, type:, db:, id:)
    @name = name
    @type = type
    @id = id
    @db = db
    
  end
  
  def self.save(name, type, db)
    sql = <<-SQL
      INSERT INTO Pokemon (id, name, type)
      VALUES (?, ?)
    SQL
    row = db[:conn].execute(sql, name, type)[0]
    id = DB[:conn].execute("SELECT last_insert_rowid() FROM students")[0][0]
    return self.new(id)
  
  end
end
