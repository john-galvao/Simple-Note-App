require 'pstore'

# We will use a file-based persistant
# mechanism to save note objects
# using 'pstore' above

class Database
    def initialize
        @store = Pstore.new("notes.store")
    end
end