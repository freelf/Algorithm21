//
//  MinimumSizeSubarrySum.swift
//  ConquerAlgorithm
//
//  Created by Freelf on 2021/2/20.
//  Copyright © 2021 Freelf. All rights reserved.
//

// 209. 长度最小的子数组
// https://leetcode-cn.com/problems/minimum-size-subarray-sum/

import Foundation

class MinimumSizeSubarrySumSolution {
    func minSubArrayLen(_ target: Int, _ nums: [Int]) -> Int {
        var length = -1
        for i in 0 ..< nums.count {
            var sum = 0
            for j in i ..< nums.count {
                sum += nums[j]
                if sum >= target {
                    let newLength = j - i + 1;
                    length = length == -1 ? newLength : min(newLength, length)
                }
            }
        }
        return length == -1 ? 0 : length
    }
    
    func minSubArrayLen2(_ target: Int, _ nums: [Int]) -> Int { // 滑动窗口
        var length = -1
        var sum = 0
        var startIndex = 0
        for i in 0 ..< nums.count {
            sum += nums[i]
            while sum >= target {
                let newLength = i - startIndex + 1
                length = length == -1 ? newLength : min(newLength, length)
                sum -= nums[startIndex] // 窗口开始滑动
                startIndex += 1
            }
        }
        return length == -1 ? 0 : length
    }
}
