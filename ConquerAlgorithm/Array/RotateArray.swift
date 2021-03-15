//
//  RotateArray.swift
//  ConquerAlgorithm
//
//  Created by Freelf on 2021/3/15.
//  Copyright © 2021 Freelf. All rights reserved.
//
// https://leetcode-cn.com/problems/rotate-array/
// 189. 旋转数组
import Foundation
class RotateArraySolution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        let count = k % nums.count
        nums.reverse()
        reverse(&nums, begin: 0, end: count - 1)
        reverse(&nums, begin: count, end: nums.count - 1)
    }
    func reverse(_ nums: inout [Int], begin: Int, end: Int) {
        var b = begin
        var e = end
        while b < e {
            let end = nums[e]
            nums[e] = nums[b]
            nums[b] = end
            b += 1
            e -= 1
        }
    }
}
