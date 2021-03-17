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
        if root == nil {
            return true
        }
        if abs(height(of: root?.left) - height(of: root?.right)) > 1 {
            return false
        }
        let lBalanced = isBalanced(root?.left)
        let rBalanced = isBalanced(root?.right)
        return lBalanced && rBalanced
    }
    func height(of node: TreeNode?) -> Int {
        if node == nil {
            return 0
        }
        return 1 + max(height(of: node?.left), height(of: node?.right))
    }
}
 
