/// 119. Pascal's Triangle II
/// 给定一个非负索引 k，其中 k ≤ 33，返回杨辉三角的第 k 行。
/// https://leetcode-cn.com/problems/pascals-triangle-ii/description/

func getRow(_ rowIndex: Int) -> [Int] {
    guard rowIndex >= 0 else {
        return []
    }
    
    var result: [Int] = []
    
    for i in 0...rowIndex {
        result.insert(1, at: 0)
        
        if result.count <= 1 {
            continue
        }
        
        for j in 1..<result.count - 1 {
            result[j] = result[j] + result[j + 1]
        }
    }
    
    return result
}