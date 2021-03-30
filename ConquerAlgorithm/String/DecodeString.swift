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
        var result = ""
        var mutils: [Int] = []
        var strs: [String] = []
        var mutil = 0
        var curRes = ""
        for char in s {
            if char == "["  {
                mutils.append(mutil)
                strs.append(curRes)
                curRes = ""
            } else if char == "]" {
                let lastMutil = mutils.removeLast()
                let str = strs.removeLast()
                var tempResult = ""
                for _ in 0 ..< lastMutil {
                    tempResult.append(str)
                }
                if strs.isEmpty {
                    result.append(tempResult)
                }
            } else if char >= "0" && char <= "9" {
                mutil = mutil * 10 + Int(String(char))!
            } else {
                curRes += String(char)
            }
        }
        
        return strs.reduce("") { (result, cur) -> String in return result + cur } + result
    }
}
