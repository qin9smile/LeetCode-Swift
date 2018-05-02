func containsDuplicate(_ nums: [Int]) -> Bool {
    return  nums.count > 1 && nums.count != Set(nums).count
}