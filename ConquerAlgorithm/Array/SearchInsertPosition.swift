//
//  SearchInsertPosition.swift
//  ConquerAlgorithm
//
//  Created by Freelf on 2021/2/20.
//  Copyright © 2021 Freelf. All rights reserved.
//

// 35. 搜索插入位置
// https://leetcode-cn.com/problems/search-insert-position/

import Foundation
class SearchInsertPositionSolution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1
        while left <= right {
            let mid = (left + right) >> 1
            let midValue = nums[mid]
            if midValue > target { // [left, mid - 1]
                right = mid - 1
            } else if midValue < target { // [left + 1, right]
                left = mid + 1
            } else {
                return mid
            }
        }
        //[mid + 1, right], [left, mid - 1] 跳出循环肯定是这两种情况的一种，mid = left = right。
        return left; // 这里返回left或者right+1都没问题，因为到这里left = right + 1
    }
    func searchInsert2(_ nums: [Int], _ target: Int) -> Int { //[ )
        var left = 0
        var right = nums.count
        while left < right {
            let mid = (left + right) >> 1
            let midValue = nums[mid]
            if midValue > target {
                right = mid
            } else if midValue < target {
                left = mid + 1
            } else {
                return mid
            }
        }
        return left; // 到这里left = right，所以返回left或者right都可以
    }
}
