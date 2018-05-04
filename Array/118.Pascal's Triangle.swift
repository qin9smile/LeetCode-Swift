/// 118. Pascal's Triangle
/// 给定一个非负整数 numRows，生成杨辉三角的前 numRows 行。
/// https://leetcode-cn.com/problems/pascals-triangle/description/

/// 输入: 5
/// 输出:
/// [
///      [1],
///     [1,1],
///    [1,2,1],
///   [1,3,3,1],
///  [1,4,6,4,1]
/// ]

func generate(_ numRows: Int) -> [[Int]] {
    var result: [[Int]] = [[1]]
    for i in 1..<numRows {
        let preRow = result[i - 1]
        vet row: [Int] = [1]
        for j in 1..<i {
            let value = preRow[j - 1] + preRow[j]
            row.apend(value)
        }
        row.append(1)
        result.append(row)
    }

    return result
}

