//
//  MaximumDepthOfBinaryTree.swift
//  ConquerAlgorithm
//
//  Created by Freelf on 2021/4/1.
//  Copyright © 2021 Freelf. All rights reserved.
//



import Foundation
class MaximumDepthOfBinaryTreeSolution {
    func maxDepth(_ root: TreeNode?) -> Int {
        if root == nil {
            return 0
        }
        let leftDepth = maxDepth(root?.left)
        let rightDepth = maxDepth(root?.right)
        return max(leftDepth, rightDepth) + 1
    }
    
    func maxDepth2(_ root: TreeNode?) -> Int {
        var depth = 0
        var stack: [TreeNode] = []
        if let node = root {
            stack.append(node)
        }
        while !stack.isEmpty { // 1
            let size = stack.count
            depth += 1
            for _ in 0 ..< size {
                let last = stack.removeFirst() // 这里一定要removeFirst，队列
                if let left = last.left {
                    stack.append(left)
                }
                if let right = last.right {
                    stack.append(right)
                }
            }
        }
        return depth
    }
}
