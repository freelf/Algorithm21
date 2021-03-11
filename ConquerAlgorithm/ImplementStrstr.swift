//
//  ImplementStrstr.swift
//  ConquerAlgorithm
//
//  Created by Freelf on 2021/3/11.
//  Copyright © 2021 Freelf. All rights reserved.
//

import Foundation
class ImplementStrstrSolution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        if needle == "" {
            return 0
        }
        if let range =  haystack.range(of: needle){
            return haystack.distance(from: haystack.startIndex, to: range.lowerBound)
        }
        return -1
    }
}
