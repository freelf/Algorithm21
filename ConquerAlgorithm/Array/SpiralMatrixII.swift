//
//  SpiralMatrixII.swift
//  ConquerAlgorithm
//
//  Created by Freelf on 2021/2/20.
//  Copyright © 2021 Freelf. All rights reserved.
//

// 59. 螺旋矩阵 II
// https://leetcode-cn.com/problems/spiral-matrix-ii/

import Foundation
class SpiralMatrixIISolution {
    func generateMatrix(_ n: Int) -> [[Int]] {
        var arr = Array.init(repeating: Array.init(repeating: 0, count: n), count: n)
        var startX = 0
        var startY = 0
        var loop = n / 2
        var offset = 1
        var number = 1;
        while loop > 0 {
            var x = startX
            var y = startY
            for _ in 0 ..<  n - offset {
                arr[y][x] = number;
                number += 1
                x += 1
            }
            for _ in 0 ..<  n - offset {
                arr[y][x] = number;
                number += 1
                y += 1
            }
            while x > startX {
                arr[y][x] = number;
                number+=1
                x -= 1
            }
            while y > startY {
                arr[y][x] = number;
                number+=1
                y -= 1
            }
            startX += 1
            startY += 1
            offset += 2
            loop-=1
        }
        if n % 2 == 1 {
            arr[startY][startX] = number
        }
        return arr
    }
}
