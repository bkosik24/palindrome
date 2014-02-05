require "pry"
class Palindrome

  def initialize(string_to_test)
    @palindrome_string = string_to_test
  end

  def reverse_string_check
    string = validate_string(@palindrome_string)
    (string.reverse == string) ? true : false
  end

  def more_complex_palindrome_check
    string = validate_string(@palindrome_string)
    palindrome_array = string.split("")
    index = 0
    (palindrome_array.size-1).downto(0).each do |i|
      return false if (palindrome_array[i] != palindrome_array[index])
      index += 1
    end
    return true
  end

private

  def validate_string(string)
    string = string.gsub(/[^0-9A-Za-z]/i, "").downcase
    return false if (string == "" || string.length <= 1)
    string
  end

end
