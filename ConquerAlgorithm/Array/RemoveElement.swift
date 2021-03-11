// 27. 移除元素
// https://leetcode-cn.com/problems/remove-element/
//  RemoveElement.swift
//  ConquerAlgorithm
//
//  Created by Freelf on 2021/2/20.
//  Copyright © 2021 Freelf. All rights reserved.
//
//func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
//    var i = 0
//    while i < nums.count {
//        if nums[i] == val {
//            nums.remove(at: i)
//        }
//        i += 1
//    }
//    return nums.count
//}

import Foundation

class RemoveElementSolution {
    
    func removeElement2(_ nums: inout [Int], _ val: Int) -> Int {
        if nums.count == 0 {
            return 0
        }
        if nums.count == 1 {
            return nums[0] == val ? 0 : 1
        }
        var result = 0
        for index in 0 ..< nums.count {
            let ele = nums[index]
            if ele != val {
                nums[result] =  ele
                result += 1
            }
        }
        return result
    }
    
}
