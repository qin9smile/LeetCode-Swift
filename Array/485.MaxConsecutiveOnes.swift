/// 485. MaxConsecutiveOnes
/// 给定一个二进制数组， 计算其中最大连续1的个数。
/// https://leetcode-cn.com/problems/max-consecutive-ones/description/

func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
    var maxCount: Int = 0
    var currentCount: Int = 0
    for i in 0..<nums.count {
        if nums[i] == 1 {
            currentCount += 1
        } else {
            if maxCount < currentCount {
                maxCount = currentCount
            }
            currentCount = 0
        }
    }
    
    return currentCount > maxCount ? currentCount : maxCount
}