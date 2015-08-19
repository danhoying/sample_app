# 1
def string_shuffle(s)
  s.split('').shuffle.join
end

puts string_shuffle("foobar") # => ofbaro

#--------------------------------------

# 2
class String
  def shuffle
    self.split('').shuffle.join
  end
end

s = String.new("foobar")
puts s.shuffle # => orbfoa

#--------------------------------------

# 3
person1 = { first: "Dan", last: "Hoying" }
person2 = { first: "Judy", last: "Davis" }
person3 = { first: "James", last: "Stevens" }
params = { father: person1, mother: person2, child: person3 }
puts params[:father][:first] # => Dan
puts params[:child] # => {:first=>"James", :last=>"Stevens"}

#--------------------------------------

# 4
s = { "a" => 100, "b" => 200 }.merge({ "b" => 300 })
# The hash #merge method merges two hashes and replaces identical keys with
# the merged values.
puts s # => {"a"=>100, "b"=>300}