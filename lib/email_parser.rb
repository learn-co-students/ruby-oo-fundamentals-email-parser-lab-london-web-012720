require "pry"
# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
    attr_accessor :email

    def initialize(email)
        @email = email 
    end

    def erase_whitespaces
        @email.length.times do |index|
            @email[index] = @email[index].strip
        end
    end

    def return_unique
        p self.email.uniq
    end

    def parse 
        @email = @email.tr(", "," ").split 
        erase_whitespaces
        p @email
        return_unique
    end

end

# aaa = EmailAddressParser.new("dasdas@dasdas.com, aaa@gmail.com zzzzz@gmail.com")
# #.tr(";,"," ")
# binding.pry