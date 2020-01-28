# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

#emails = "avi@test.com, arel@test.com test@avi.com, test@arel.com"

class EmailAddressParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    out = []
    arr = self.emails.split(", ")
    arr.each do |ele|
      out << ele.split(" ")
    end
    out.flatten.uniq
  end
end

#p EmailAddressParser.new("avi@test.com, arel@test.com test@avi.com, test@avi.com test@arel.com").parse
