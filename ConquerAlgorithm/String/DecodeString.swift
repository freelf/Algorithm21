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
}
