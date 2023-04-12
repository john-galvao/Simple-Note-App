require 'pstore'

# We will use a file-based persistant
# mechanism to save note objects
# using 'pstore' above

class Database
    def initialize
        @store = Pstore.new("notes.store")
    end
    def store(note)
        @store.transaction do
            @store[note.id.to_sym] = note
        end
    end
    
end