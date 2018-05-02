func rotate(_ nums: inout [Int], _ k: Int) {
    if k == nums.count {
        return
    }
    
    let _k: Int = Int(round(Double(k % nums.count)))
    let dropedNums = nums.suffix(_k)
    nums.removeLast(_k)
    nums.insert(contentsOf: dropedNums, at: 0)
}