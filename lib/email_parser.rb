# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser

    def initialize(email)
      @email = email
    end

    attr_accessor :email
   

    def parse
        @email.split.collect do |x|
             x.split(',') 
        end
        .flatten.uniq 
    end
    
    
end 