# Manager class will operate all operations over the database class
# We need a manager object
# The manager object will need a database object
require './database'

class Manager
    def initialize
        @database = Database.new
    end

def store(note)
    @database.store(note)
end

end