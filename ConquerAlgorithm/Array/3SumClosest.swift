//
//  3SumClosest.swift
//  ConquerAlgorithm
//
//  Created by Freelf on 2021/3/12.
//  Copyright © 2021 Freelf. All rights reserved.
//

// https://leetcode-cn.com/problems/3sum-closest/
// 16. 最接近的三数之和

import Foundation

class ThreeSumClosestSolution {
    func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
        if nums.count == 3 {
            return nums.reduce(0) { (result, element) -> Int in
                return result + element
            }
        }
        let sortedNums = nums.sorted()
        var result = sortedNums[0] + sortedNums[1] + sortedNums[2]
        for index in 0 ..< sortedNums.count {
            var L = index + 1
            var R = sortedNums.count - 1
            while L < R {
                let sum = sortedNums[index] + sortedNums[L] + sortedNums[R]
                if sum == target {
                    result = sum
                    break
                } else if sum < target {
                    L += 1
                } else {
                    R -= 1
                }
                result = abs(result - target)  >  abs(sum - target) ? sum : result
            }
        }
        return result
    }
}

