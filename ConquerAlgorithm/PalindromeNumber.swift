//
//  PalindromeNumber.swift
//  ConquerAlgorithm
//
//  Created by Freelf on 2021/2/5.
//  Copyright © 2021 Freelf. All rights reserved.
//

import Foundation
class PalindromeNumberSolution {
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 || (x > 0 && x % 10 == 0) {
            return false
        }
        var tempX = x
        var reverseResult = 0
        while tempX != 0 {
            reverseResult = reverseResult * 10 + tempX % 10
            tempX = tempX / 10
        }
        return x == reverseResult
    }
}
