//
//  DecodeString.swift
//  ConquerAlgorithm
//
//  Created by Freelf on 2021/3/30.
//  Copyright © 2021 Freelf. All rights reserved.
//



import Foundation
class DecodeStringSolution {
    func decodeString(_ s: String) -> String {
        var stack: [(Int, String)] = []
        var result = ""
        var mutil = 0
        for char in s {
            if char == "["  {
                stack.append((mutil, result))
                result = ""
                mutil = 0
            } else if char == "]" {
                let (curMutil, lastRes) = stack.removeLast()
                result = lastRes + String.init(repeating: result, count: curMutil)
            } else if char.isWholeNumber {
                mutil = mutil * 10 + char.wholeNumberValue!
            } else {
                result += String(char)
            }
        }
        return result
    }
    
    func decodeString2(_ s: String) -> String {
        func dfs(_ s: String, _ i: Int) -> (String, Int){
            var res = "", mutil = 0, index = i
            while index < s.count {
                let curChar = s[s.index(s.startIndex, offsetBy: index)]
                if curChar == "[" {
                    let (result, returnIndex) = dfs(s, index + 1)
                    res += String.init(repeating: result, count: mutil)
                    index = returnIndex
                    mutil = 0
                } else if curChar == "]" {
                    return (res, index)
                } else if curChar.isWholeNumber {
                    mutil = mutil * 10 + curChar.wholeNumberValue!
                } else {
                    res.append(curChar)
                }
                index += 1
            }
            return (res, -1)
        }
        return dfs(s, 0).0
    }
}
