//
//  ClimbingStairs.swift
//  ConquerAlgorithm
//
//  Created by Freelf on 2021/3/15.
//  Copyright © 2021 Freelf. All rights reserved.
//

// https://leetcode-cn.com/problems/climbing-stairs/
// 70. 爬楼梯
import Foundation


class ClimbingStairsSolution {
    func climbStairs(_ n: Int) -> Int {
        if n < 3 {
            return n
        }
        var arr = [2, 1]
        for i in 3 ... n {
            arr[i & 1] = arr[(i - 1) & 1] + arr[(i - 2) & 1]
        }
        return arr[n & 1]
    }
}
