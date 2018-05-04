/// 566. Reshape the Matrix
/// 在MATLAB中，有一个非常有用的函数 reshape，它可以将一个矩阵重塑为另一个大小不同的新矩阵，但保留其原始数据。给出一个由二维数组表示的矩阵，以及两个正整数r和c，分别表示想要的重构的矩阵的行数和列数。
/// 重构后的矩阵需要将原始矩阵的所有元素以相同的行遍历顺序填充。如果具有给定参数的reshape操作是可行且合理的，则输出新的重塑矩阵；否则，输出原始矩阵。

/// 思路：
/// 判断

func matrixReshape(_ nums: [[Int]], _ r: Int, _ c: Int) -> [[Int]] {
    guard !nums.isEmpty && nums.count <= 100 && (nums.count * nums[0].count == r * c) else {
        return nums
    }

    var results = Array(repeating: Array(repeating: -1, count: c), count: r)
    var rowIndex = 0
    var colIndex = 0
    for i in 0..<nums.count {
        for j in 0..<nums[i].count {
            results[colIndex][rowIndex] = nums[i][j]
            rowIndex += 1
            if rowIndex >= c {
                colIndex += 1
                rowIndex = 0
            }
        }
    }
    return results
}