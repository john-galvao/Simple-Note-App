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

def show_all
    entries = @database.get_all
    if entries.empty?
        puts "No Entries Found".center(50, "-")
    end
    entries.each_with_index do |item, index|
        puts item

end

end