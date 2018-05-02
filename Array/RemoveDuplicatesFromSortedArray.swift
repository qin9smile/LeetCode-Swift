func removeDuplicates(_ nums: inout [Int]) -> Int {
    if nums.count < 2 {
        return nums.count
    }
    
    var i: Int = 0
    for index in 0..<nums.count {
        if nums[index] != nums[i] {
            i += 1
            nums[i] = nums[index]
        }
    }

    return i + 1
}