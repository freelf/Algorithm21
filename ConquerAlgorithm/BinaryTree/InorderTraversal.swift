//
//  InorderTraversal.swift
//  ConquerAlgorithm
//
//  Created by Freelf on 2021/3/18.
//  Copyright © 2021 Freelf. All rights reserved.
//

// https://leetcode-cn.com/problems/binary-tree-inorder-traversal/
// 94. 二叉树的中序遍历

import Foundation

class InorderTraversalSolution {
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        var result = [Int]()
        traversal(root, &result)
        return result
    }
    func traversal(_ root: TreeNode?, _ result: inout [Int]) {
        if root == nil {
            return
        }
        traversal(root?.left, &result)
        result.append(root!.val)
        traversal(root?.right, &result)
    }
    
    func inorderTraversal2(_ root: TreeNode?) -> [Int] {
        var result = [Int]()
        if root == nil {
            return result
        }
        var stack = [TreeNode]()
        var cur = root
        while cur != nil || !stack.isEmpty {
            if cur != nil {
                stack.append(cur!)
                cur = cur?.left // 往左遍历
            } else {
                let node = stack.removeLast()
                result.append(node.val) // 第一次到这里说明到达最左，添加最左节点
                cur = node.right // 遍历右子树
            }
        }
        return result
    }
    
    func inorderTraversal3(_ root: TreeNode?) -> [Int] {
        var result = [Int]()
        if root == nil {
            return result
        }
        var stack = [TreeNode?]()
        stack.append(root)
        while !stack.isEmpty {
            if stack.last! != nil {
                let last = stack.removeLast()!
                if let right = last.right { stack.append(right) }
                stack.append(last)
                stack.append(nil)
                if let left = last.left { stack.append(left) }
            } else {
                stack.removeLast()
                result.append(stack.removeLast()!.val)
            }
        }
        return result
    }
}
