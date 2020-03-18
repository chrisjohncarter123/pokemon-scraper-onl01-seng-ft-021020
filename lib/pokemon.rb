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
      INSERT INTO Pokemon (name, type)
      VALUES (?, ?)
    SQL
    db.execute(sql, name, type)
   # return new_row
    #new_id = new_db[:conn].execute("SELECT last_insert_rowid() FROM students")[0][0]
    
   # return self.new(id: new_id, name: new_row[1], type: new_row[2], db: new_db)
  
  end
end
