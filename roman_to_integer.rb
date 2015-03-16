# @param {String} s
# @return {Integer}
#iterate each char in given string, 
#if current char is greater than previous char, then mimus 2 * number corresponding to previous char
# otherwise, plus number corresponding to that char
def roman_to_int(s)
  symbols = {
    "I" => 1,
    "V" => 5,
    "X" => 10,
    "L" => 50,
    "C" => 100,
    "D" => 500,
    "M" => 1000
  }
  num = 0
  prev_char = s[0,1]
  s.each_char do |cur_char|
    if symbols[cur_char] > symbols[prev_char]
      num += symbols[cur_char] - 2 * symbols[prev_char]
    else
      num += symbols[cur_char]
    end
    prev_char = cur_char
  end
  return num
end

puts roman_to_int("MCMXCVI")
