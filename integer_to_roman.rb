# @param {Integer} num
# @return {String}
def int_to_roman(num)
  values = {
    1000 => "M",
    900 => "CM",
    500 => "D",
    400 => "CD",
    100 => "C",
    90 => "XC",
    50 => "L",
    40 => "XL",
    10 => "X",
    9 => "IX",
    5 => "V",
    4 => "IV",
    1 =>"I"
  }
  roman = String.new
  values.keys.each do |v|
      while num >= v
        roman  += values[v]
        num -= v
      end
  end
  return roman
end

puts int_to_roman(10)
