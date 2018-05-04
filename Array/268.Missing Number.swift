/// 268. Missing Number
/// 给出一个包含 0, 1, 2, ..., n 中 n 个数的序列，找出 0 .. n 中没有出现在序列中的那个数。
/// https://leetcode-cn.com/problems/missing-number/description/

func missingNumber(_ nums: [Int]) -> Int {
    var result: Int = 0
    for i in 0..<nums.count {
        result ^= (i + 1) ^ nums[i]
    }
    
    return result
}