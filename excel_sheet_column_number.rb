# @param {String} s
# @return {Integer}
def title_to_number(s)
  title_number = 0
  arr = s.each_char.to_a
  arr.each do |n|
    title_number = title_number * 26 +  n.ord - 64
  end
  return title_number
end

cols = ["A", "B", "C", "D", "AA", "AB"]
cols.each {|s| puts title_to_number(s) }
