/// 766. Toeplitz Matrix
/// 如果一个矩阵的每一方向由左上到右下的对角线上具有相同元素，那么这个矩阵是托普利茨矩阵。给定一个 M x N 的矩阵，当且仅当它是托普利茨矩阵时返回 True。
/// https://leetcode-cn.com/problems/toeplitz-matrix/description/

/// 思路：
/// 行列格式 -> (x, y) != (x + 1, y + 1)

func isToeplitzMatrix(_ matrix: [[Int]]) -> Bool {
    /// 0 < 列数 <= 20
    guard !matrix.isEmpty && matrix.count <= 20 else {
        return false
    }

    for i in 0..<matrix.count - 1 {
        var preRow = matrix[i]

        /// 0 < 行数 <= 20
        guard !preRow.isEmpty && preRow.count <= 20 else {
            return false
        }

        /// （x, y）== (x + 1, y + 1)
        for j in 0..<preRow.count - 1 {
            var curRow = matrix[i + 1]
            if preRow[j] != curRow[j + 1] {
                return false
            }
        }
    }
    
    return true
}

