//
//  MinimumDepthOfBinaryTree.swift
//  ConquerAlgorithm
//
//  Created by Freelf on 2021/4/3.
//  Copyright © 2021 Freelf. All rights reserved.
//

import Foundation
class MinimumDepthOfBinaryTreeSolution {
    func minDepth(_ root: TreeNode?) -> Int {
        if root == nil {
            return 0
        }
        if root?.left == nil && root?.right != nil {
            return minDepth(root?.right) + 1
        }
        if root?.right == nil && root?.left != nil {
            return minDepth(root?.left) + 1
        }
        
        let leftDepth = minDepth(root?.left)
        let rightDepth = minDepth(root?.right)
        return min(leftDepth, rightDepth) + 1
    }
    
    func minDepth2(_ root: TreeNode?) -> Int {
        guard let root = root else {
            return 0
        }
        var depth = 0
        var queue: [TreeNode] = []
        queue.append(root)
        while !queue.isEmpty {
            let size = queue.count
            depth += 1
            var isLeaf = false
            for _ in 0 ..< size {
                let node = queue.removeFirst()
                if node.left == nil && node.right == nil {
                    isLeaf = true
                    break
                }
                if let left = node.left {
                    queue.append(left)
                }
                if let right = node.right {
                    queue.append(right)
                }
            }
            if isLeaf  {
                break
            }
        }
        return depth
    }
}
