//
//  ZigzagLevelOrderTraversal.swift
//  ConquerAlgorithm
//
//  Created by Freelf on 2021/3/26.
//  Copyright © 2021 Freelf. All rights reserved.
//

// https://leetcode-cn.com/problems/binary-tree-zigzag-level-order-traversal/
// 103. 二叉树的锯齿形层序遍历

import Foundation
class ZigzagLevelOrderTraversalSolution {
    func zigzagLevelOrder(_ root: TreeNode?) -> [[Int]] {
        var result: [[Int]] = []
        if root == nil {
            return result
        }
        var queue: [TreeNode] = []
        queue.append(root!)
        var level = 0
        while !queue.isEmpty {
            let size = queue.count
            var levelArray: [Int] = []
            for _ in 0 ..< size {
                let node = queue.removeFirst()
                if level & 1 == 1 { // 奇数
                    levelArray.insert(node.val, at: 0)
                } else {
                    levelArray.append(node.val)
                }
                if let left = node.left { queue.append(left) }
                if let right = node.right { queue.append(right) }
            }
            result.append(levelArray)
            level += 1
        }
        return result
    }
    
    func zigzagLevelOrder2(_ root: TreeNode?) -> [[Int]] {
        var result: [[Int]] = []
        traversal(root, 0, &result)
        return result
    }
    func traversal(_ node:TreeNode?, _ level: Int, _ result: inout [[Int]]) {
        if node == nil {
            return
        }
        
        if result.count == level {
            result.append([Int]())
        }
        
        if level & 1 == 1 {
            result[level].insert(node!.val, at: 0)
        } else {
            result[level].append(node!.val)
        }
        
        traversal(node?.left, level + 1, &result)
        traversal(node?.right, level + 1, &result)
    }

}
