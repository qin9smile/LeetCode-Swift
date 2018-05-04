/// 169. Majority Element
/// 给定一个大小为 n 的数组，找到其中的众数。众数是指在数组中出现次数大于 ⌊ n/2 ⌋ 的元素。你可以假设数组是非空的，并且给定的数组总是存在众数。
/// https://leetcode-cn.com/problems/majority-element/description/

func majorityElement(_ nums: [Int]) -> Int {
    var count: [Int: Int] = [:]
    
    for i in 0..<nums.count {
        count[nums[i]] = (count[nums[i]] ?? 0 ) + 1
        if count[nums[i]]! > nums.count / 2 {
            return nums[i]
        }
    }
    
    return -1
}