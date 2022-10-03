# runtime: 1632ms
# memory: 211.5MB

# def two_sum(nums, target)
#     for i in 0...nums.length do
#         a = nums[i]
#         j = i + 1
#         while j < (nums.length - 1) do
#             if (a + nums[j]) == target
#                 return [i, j]
#             end
#             j += 1
#         end
#     end
# end


def two_sum(nums, target)
    map = Hash.new
    nums.each_with_index do |num, i|
        map[target - num] = i
    end

    for i in 0...nums.length do
        if map.has_key?(nums[i]) && i != map[nums[i]]
            return [i, map[nums[i]]]
        end
    end
end
