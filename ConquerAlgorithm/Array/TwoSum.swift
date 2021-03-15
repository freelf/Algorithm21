//
//  TwoSum.swift
//  ConquerAlgorithm
//
//  Created by Freelf on 2021/2/5.
//  Copyright © 2021 Freelf. All rights reserved.
//

// 1. 两数之和
// https://leetcode-cn.com/problems/two-sum/

import Foundation
class TwoSumSolution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int : Int]()
        for i in 0 ..< nums.count {
            let num = nums[i]
            let wantFind = target - num
            if let find = dict[wantFind] {
                return [find, i]
            } else {
                dict[num] = i
            }
        }
        return []
    }
    func twoSum2(_ nums: [Int], _ target: Int) -> [Int] {
        for i in 0 ..< nums.count {
            for j in i + 1 ..< nums.count {
                if nums[i] + nums[j] == target {
                    return [i, j];
                }
            }
        }
        return []
    }
}
