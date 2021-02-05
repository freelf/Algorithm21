//
//  ReverseInteger.swift
//  ConquerAlgorithm
//
//  Created by Freelf on 2021/2/5.
//  Copyright © 2021 Freelf. All rights reserved.
//

import Foundation
//[-2147483648, 2147483647]
class ReverseIntegerSolution {
    func reverse(_ x: Int) -> Int {
        if x == -2147483648 {
            return 0
        }
        if x < 0 {
           return -reverse(-x)
        }
        var tempX = x
        var result = 0
        while tempX != 0 {
            if result > 214748364 {
                return 0
            }
            let temp = tempX % 10
            result = result * 10 + temp
            tempX = tempX / 10
        }
        return result <= 2147483647 ? result : 0
    }
}
