//
//  SearchInRotatedSortedArray.swift
//  ConquerAlgorithm
//
//  Created by Freelf on 2021/4/6.
//  Copyright © 2021 Freelf. All rights reserved.
//

import Foundation
class SearchInRotatedSortedArraySolution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1
        while left <= right {
            let mid = (left + right) / 2
            
            if nums[mid] == target {
                return mid
            }
            
            if nums[mid] >= nums[left] { // 左边升序
                if target < nums[mid] && target >= nums[left] {
                    right = mid - 1
                } else {
                    left = mid + 1
                }
            } else { // 右边升序
                if target > nums[mid] && target <= nums[right] {
                    left = mid + 1
                } else {
                    right = mid - 1;
                }
            }
        }
        return -1;
    }
}
