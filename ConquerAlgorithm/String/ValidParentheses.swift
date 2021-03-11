//
//  ValidParentheses.swift
//  ConquerAlgorithm
//
//  Created by Freelf on 2021/3/10.
//  Copyright © 2021 Freelf. All rights reserved.
//

// https://leetcode-cn.com/problems/valid-parentheses/
// 20. 有效的括号

import Foundation
class ValidParenthesesSolution {
    func isValid(_ s: String) -> Bool {
        guard s.count > 0 else {
            return false
        }
        let map: [Character : Character] = ["(" : ")", "{" : "}", "[" : "]"]
        var stack: [Character] = []
        for char in s {
            if stack.count == 0 {
                stack.append(char)
                continue
            }
            if (map[stack.last!] == char) {
                stack.removeLast()
            } else {
                stack.append(char)
            }
        }
        return stack.isEmpty
    }
}
