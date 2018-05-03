/// 561. Array Partition I
/// 给定长度为 2n 的数组, 你的任务是将这些数分成 n 对, 例如 (a1, b1), (a2, b2), ..., (an, bn) ，使得从1 到 n 的 min(ai, bi) 总和最大。
/// https://leetcode-cn.com/problems/array-partition-i/description/

/// 思路：
/// 排序 -> 连续两个数取最小值求和
/// 从小到大排序的话，直接可以取 [0], 【2】...的值求和

func arrayPairSum(_ nums: [Int]) -> Int {
    var _nums = nums.sorted() // 默认正向排序
    var result: Int = 0
    var index: Int = 0
    while index < _nums.count {
        result += _nums[index]
        index += 2
    }

    return result
}