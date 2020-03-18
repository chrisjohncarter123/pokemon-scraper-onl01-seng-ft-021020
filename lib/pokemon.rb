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
    
  end
end
