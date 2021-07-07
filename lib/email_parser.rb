# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require "pry"
class EmailAddressParser

attr_accessor :emails

def initialize(emails)
    @email = emails
end

def parse
@email.split.collect do|email|

    email.split(',')
    
 end
 .flatten.uniq

 end

end

# @email.split.collect do|email|

#     email.split(',')
# end
# .flatten.uniq
# end