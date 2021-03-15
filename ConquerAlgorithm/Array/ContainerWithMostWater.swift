//
//  ContainerWithMostWater.swift
//  ConquerAlgorithm
//
//  Created by Freelf on 2021/3/14.
//  Copyright © 2021 Freelf. All rights reserved.
//

// https://leetcode-cn.com/problems/container-with-most-water/
// 11. 盛最多水的容器
import Foundation
class ContainerWithMostWaterSolution {
    func maxArea(_ height: [Int]) -> Int {
        var leading = 0
        var tail = height.count - 1
        var area = 0
        while leading < tail {
            area = max(area, (tail - leading) * min(height[leading], height[tail]))
            if height[tail] < height[leading] {
                tail -= 1
            } else {
                leading += 1
            }
        }
        return area
    }
}
