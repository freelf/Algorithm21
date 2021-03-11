//
//  LongestCommonPrefix.swift
//  ConquerAlgorithm
//
//  Created by Freelf on 2021/3/10.
//  Copyright © 2021 Freelf. All rights reserved.
//

// https://leetcode-cn.com/problems/longest-common-prefix/
// 14. 最长公共前缀
import Foundation
class LongestCommonPrefixSolution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        guard strs.count > 0 else {
            return ""
        }
        var result = strs[0]
        for index in 1 ..< strs.count {
            var sameIndex = 0
            for strIndex in 0 ..< min(result.count, strs[index].count) {
                let resultChar = result[result.index(result.startIndex, offsetBy: strIndex)]
                let compareChar = strs[index][strs[index].index(strs[index].startIndex, offsetBy: strIndex)]
                if resultChar != compareChar {
                    break
                }
                sameIndex += 1
            }
            
            if result.prefix(sameIndex) == "" {
                return ""
            }
            result = String(result.prefix(sameIndex))
        }
        return result
    }
}
