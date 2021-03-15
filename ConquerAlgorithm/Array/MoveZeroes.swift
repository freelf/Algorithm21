//
//  MoveZeroes.swift
//  ConquerAlgorithm
//
//  Created by Freelf on 2021/3/15.
//  Copyright © 2021 Freelf. All rights reserved.
//

import Foundation
class MoveZeroesSolution {
    func moveZeroes(_ nums: inout [Int]) {
        if nums.count == 0 {
            return
        }
        var insertIndex = 0
        for index in 0 ..< nums.count {
            if nums[index] != 0 {
                nums[insertIndex] = nums[index]
                if index != insertIndex {
                    nums[index] = 0
                }
                insertIndex += 1
            }
        }
    }
}
