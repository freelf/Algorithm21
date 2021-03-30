//
//  LevelOrderTraversal.swift
//  ConquerAlgorithm
//
//  Created by Freelf on 2021/3/26.
//  Copyright © 2021 Freelf. All rights reserved.
//

// https://leetcode-cn.com/problems/binary-tree-level-order-traversal/
// 102. 二叉树的层序遍历
import Foundation
class LevelOrderSolution {
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        var result: [[Int]] = []
        if root == nil {
            return result
        }
        var queue: [TreeNode] = []
        queue.append(root!)
        while !queue.isEmpty {
            let size = queue.count
            var levelArray: [Int] = []
            for _ in 0 ..< size {
                let node = queue.removeFirst()
                levelArray.append(node.val)
                if let left = node.left { queue.append(left) }
                if let right = node.right { queue.append(right) }
            }
            result.append(levelArray)
        }
        return result
    }
}
