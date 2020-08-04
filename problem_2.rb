INPUT_LENGTH = 10 ** 5

def is_valid?(input_string)
  characters = input_string.split("")
  new_array = characters.uniq.map do |character|
    characters.count(character)
  end
  new_array.max > new_array.min + 1 ? "No" : "Yes"
end

# validating length of string
def validate_length?(input)
  input.length > 0 && input.length < INPUT_LENGTH ? true : false
end

# validating required pattern
def validate_characters?(input)
  input.match? (/^[a-z]*$/)
end

puts "Please enter input string"
input_string = gets.chomp

if (validate_length? input_string) && (validate_characters? input_string)
  puts is_valid? input_string
else
  puts "Please enter a valid input"
end