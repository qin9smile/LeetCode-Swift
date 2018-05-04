/// 695. 岛屿的最大面积
/// 给定一个包含了一些 0 和 1的非空二维数组 grid , 一个 岛屿 是由四个方向 (水平或垂直) 的 1 (代表土地) 构成的组合。你可以假设二维矩阵的四个边缘都被水包围着。找到给定的二维数组中最大的岛屿面积。(如果没有岛屿，则返回面积为0。
/// https://leetcode-cn.com/problems/max-area-of-island/description/

func maxAreaOfIsland(_ grid: [[Int]]) -> Int {
    guard !grid.isEmpty && grid.count <= 50 && !grid[0].isEmpty && grid[0].count <= 50 else {
      return 0
    }
    
    var grid = grid
    var round = [[-1, 0], [0, -1], [0, 1],  [1, 0]]
    func loop(x: Int, y: Int, count: inout Int) {
      for item in round {
        let i = x + item[0]
        let j = y + item[1]
        if i >= 0 && i < grid.count && j >= 0 && j < grid[0].count && grid[i][j] == 1 {
          count += 1
          grid[i][j] = -1
          loop(x: i, y: j, count: &count)
        }
      }
    }
    
    var maxCount = 0
    for i in 0..<grid.count {
      for j in 0..<grid[i].count {
        if grid[i][j] == 1 {
          grid[i][j] = -1
          var currentCount = 1
          loop(x: i, y: j, count: &currentCount)
          maxCount = currentCount > maxCount ? currentCount : maxCount
        }
      }
    }
    
    return maxCount
}