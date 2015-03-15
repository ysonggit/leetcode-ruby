# @param {Integer} n
# @return {String}
def convert_to_title(n)
  title = String.new
  while n>0
    r = n % 26 #52%26 = 0
    n /= 26    #n/=26 -> n=2
    if r ==0 #Z , n--
      title += 'Z'
      n -= 1
    else
      title += ('A'.ord + r - 1).chr
    end
  end
  return title.reverse!
end

(1..100).each do |i|
  puts convert_to_title(i)
end
