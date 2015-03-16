# @param {Integer[]} nums
# @param {Integer} k
# @return {void} Do not return anything, modify nums in-place instead.
def rotate(nums, k)
  nums.rotate!(nums.length-k)
  return
end

nums = [1,2,3,4,5,6,7]
rotate(nums, 3)
nums.each do |i|
  print i, " "
end
