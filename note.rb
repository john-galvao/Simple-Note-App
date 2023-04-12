require 'securerandom'
puts SecureRandom.uuid
class Note

    def initialize(text)
        @id = SecureRandom.uuid
        @text = text
        @date = Time.now
    end
end