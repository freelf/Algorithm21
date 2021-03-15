//
//  PlusOne.swift
//  ConquerAlgorithm
//
//  Created by Freelf on 2021/3/15.
//  Copyright © 2021 Freelf. All rights reserved.
//

// https://leetcode-cn.com/problems/plus-one/
// 66. 加一
import Foundation
class PlusOneSolution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var digits = digits
        for i in (0 ..< digits.count).reversed() {
            digits[i] += 1
            digits[i] %= 10
            if digits[i] != 0 {
                return digits
            }
        }
        digits.insert(1, at: 0)
        return digits
    }
}
