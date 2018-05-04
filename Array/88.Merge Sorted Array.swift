/// 88. Merge Sorted Array
/// 给定两个有序整数数组 nums1 和 nums2，将 nums2 合并到 nums1 中，使得 num1 成为一个有序数组。
/// https://leetcode-cn.com/problems/merge-sorted-array/description/
/// 说明:
///
/// 初始化 nums1 和 nums2 的元素数量分别为 m 和 n。
/// 你可以假设 nums1 有足够的空间（空间大小大于或等于 m + n）来保存 nums2 中的元素。


func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    var index = m + n - 1
    var nums1Index = m - 1
    var nums2Index = n - 1
    while nums1Index >= 0 && nums2Index >= 0 {
        if nums2[nums2Index] > nums1[nums1Index] {
            nums1[index] = nums2[nums2Index]
            nums2Index -= 1
        } else {
            nums1[index] = nums1[nums1Index]
            nums1Index -= 1
        }

        index -= 1
    }

    if nums1Index < 0 {
        while nums2Index >= 0 {
            nums1[index] = nums2[nums2Index]
            nums2Index -= 1
            index -= 1  
        }
    }
}