//
//  PostorderTraversal.swift
//  ConquerAlgorithm
//
//  Created by Freelf on 2021/3/26.
//  Copyright © 2021 Freelf. All rights reserved.
//

// https://leetcode-cn.com/problems/binary-tree-postorder-traversal/
// 145. 二叉树的后序遍历

import Foundation

class PostorderSolution {
    func postorderTraversal(_ root: TreeNode?) -> [Int] {
        var array = [Int]()
        traversal(root, &array)
        return array
    }
    func traversal(_ root: TreeNode?, _ result: inout [Int]) {
        if root == nil {
            return
        }
        traversal(root?.left, &result)
        traversal(root?.right, &result)
        result.append(root!.val)
    }
    
    func postorderTraversal2(_ root: TreeNode?) -> [Int] {
        var result = [Int]()
        if root == nil {
            return result
        }
        var stack = [TreeNode]()
        stack.append(root!)
        while !stack.isEmpty {
            let node = stack.removeLast()
            result.append(node.val)
            
            if let left = node.left {
                stack.append(left)
            }
            if let right = node.right {
                stack.append(right)
            }
        }
        return result.reversed()
    }
    
    func postorderTraversal3(_ root: TreeNode?) -> [Int] {
        var result = [Int]()
        if root == nil {
            return result
        }
        var stack = [TreeNode?]()
        stack.append(root)
        while !stack.isEmpty {
            let top = stack.last!
            if top != nil {
                stack.append(nil)
                if let right = top!.right { stack.append(right) }
                if let left = top!.left { stack.append(left) }
            } else {
                stack.removeLast()
                result.append(stack.removeLast()!.val)
            }
        }
        return result
    }

}
