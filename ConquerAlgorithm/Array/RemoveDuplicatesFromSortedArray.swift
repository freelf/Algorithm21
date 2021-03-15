//
//  RemoveDuplicatesFromSortedArray.swift
//  ConquerAlgorithm
//
//  Created by Freelf on 2021/3/11.
//  Copyright © 2021 Freelf. All rights reserved.
//

// https://leetcode-cn.com/problems/remove-duplicates-from-sorted-array/
// 26. 删除排序数组中的重复项

import Foundation
class RemoveDuplicatesFromSortedArraySolution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.count < 2 {
            return nums.count
        }
        var insertBeforeIndex = 0
        for i in 1 ..< nums.count {
            if nums[i] != nums[insertBeforeIndex] {
                nums[insertBeforeIndex + 1] = nums[i]
                insertBeforeIndex += 1
            }
        }
        return insertBeforeIndex + 1
    }
}
