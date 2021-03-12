//
//  3Sum.swift
//  ConquerAlgorithm
//
//  Created by Freelf on 2021/3/12.
//  Copyright © 2021 Freelf. All rights reserved.
//

//  https://leetcode-cn.com/problems/3sum/
//  15. 三数之和

import Foundation

class ThreeSum {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        if nums.count < 3 {
            return []
        }
        if nums.count == 3 && nums.reduce(0, { (result, cur) -> Int in
            return result + cur
        }) == 0{
            return [nums]
        }
        let numSorted = nums.sorted()
        var result:[[Int]] = []
        if numSorted.first! > 0 || numSorted.last! < 0 {
            return []
        }
        for index in 0 ..< numSorted.count {
            if index > 0 && numSorted[index] == numSorted[index - 1] {
                continue
            }
            var L = index + 1
            var R = numSorted.count - 1
            while L < R {
                let sum = numSorted[index] + numSorted[L] + numSorted[R]
                if sum == 0 {
                    result.append([numSorted[index], numSorted[L], numSorted[R]])
                    while L < R && numSorted[L] == numSorted[L + 1] {
                        L += 1
                    }
                    while L < R && numSorted[R] == numSorted[R - 1] {
                        R -= 1
                    }
                    L += 1
                    R -= 1
                } else if sum < 0 {
                    L += 1
                } else {
                    R -= 1
                }
            }
        }
        return result
    }
}
