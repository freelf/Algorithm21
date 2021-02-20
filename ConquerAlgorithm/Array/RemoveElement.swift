//
//  RemoveElement.swift
//  ConquerAlgorithm
//
//  Created by Freelf on 2021/2/20.
//  Copyright © 2021 Freelf. All rights reserved.
//

// 27. 移除元素
// https://leetcode-cn.com/problems/remove-element/
import Foundation

class RemoveElementSolution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var i = 0
        while i < nums.count {
            if nums[i] == val {
                nums.remove(at: i)
            }
            i += 1
        }
        return nums.count
    }
    
    func removeElement2(_ nums: inout [Int], _ val: Int) -> Int {
        var slowIndex = 0
        for fastIndex in 0 ..< nums.count {
            if val != nums[fastIndex] {
                nums[slowIndex] = nums[fastIndex]
                slowIndex += 1
            }
        }
        return slowIndex
    }
}
