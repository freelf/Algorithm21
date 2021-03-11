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
        var slow = 0
        for index in 1 ..< nums.count {
            let element = nums[index]
            if element != nums[slow] {
                if index - slow != 1 {
                    nums[slow + 1] = element
                }
                slow += 1
            }
        }
        return slow + 1
    }
}
