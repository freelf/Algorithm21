//
//  File.swift
//  ConquerAlgorithm
//
//  Created by Freelf on 2021/3/16.
//  Copyright © 2021 Freelf. All rights reserved.
//

import Foundation
class BalancedBinaryTreeSolution {
    func isBalanced(_ root: TreeNode?) -> Bool {
        let lHeight = height(of: root?.left)
        let rHeight = height(of: root?.right)
        return abs(lHeight - rHeight) <= 1
    }
    func height(of node: TreeNode?) -> Int {
        if node == nil {
            return 0
        }
        return 1 + max(height(of: node?.left), height(of: node?.right))
    }
}
 
