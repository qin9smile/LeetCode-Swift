/// 661. Image Smoother
/// 包含整数的二维矩阵 M 表示一个图片的灰度。你需要设计一个平滑器来让每一个单元的灰度成为平均灰度 (向下舍入) ，平均灰度的计算是周围的8个单元和它本身的值求平均，如果周围的单元格不足八个，则尽可能多的利用它们。
/// https://leetcode-cn.com/problems/image-smoother/description/

func imageSmoother(_ M: [[Int]]) -> [[Int]] {
    var result: [[Int]] = []
    guard !M.isEmpty && M.count <= 150 else {
      return M
    }
    
    for i in 0..<M.count {
      guard !M[i].isEmpty && M[i].count <= 150 else {
        return M
      }
      var row: [Int] = []
      for j in 0..<M[i].count{
//        guard M[i][j] >= 0 && M[i][j] <= 150 else {
//          return M
//        }
        var sum: Int = 0
        var count: Int = 0
        for x in (i - 1)...(i + 1) {
          for y in (j - 1)...(j + 1) {
            if x >= 0 && y >= 0 && x < M.count && y < M[i].count {
              sum += M[x][y]
              count += 1
            }
          }
        }
        
        if count == 0 {
          row.append(0)
        } else {
          row.append(Int(floor(Double(sum / count))))
        }
      }
      result.append(row)
    }
    
    return result
}