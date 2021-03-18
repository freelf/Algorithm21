//
//  SqrtX.swift
//  ConquerAlgorithm
//
//  Created by Freelf on 2021/3/17.
//  Copyright © 2021 Freelf. All rights reserved.
//

import Foundation
class SqrtXSolution {
    func mySqrt(_ x: Int) -> Int {
        if x < 2 {
            return x
        }
        var mid = 0
        var left = 1
        var right = x
        while left <= right {
            mid = left + (right - left) / 2
            if mid * mid == x {
                return mid
            } else if mid * mid > x {
                right = mid - 1
            } else {
                left = mid + 1
            }
        }
        return left - 1
    }
}
