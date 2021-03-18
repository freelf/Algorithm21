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
        if root == nil {
            return []
        }
        var result = inorderTraversal(root?.left)
        result.append(root!.val)
        result += inorderTraversal(root?.right)
        return result
    }
    func inorderTraversal2(_ root: TreeNode?) -> [Int] {
        if root == nil {
            return []
        }
        var result = [Int]()
        var stack = [TreeNode]()
        stack.append(root!)
        while !stack.isEmpty {
            let root = stack.last!
            if root.left != nil {
                stack.append(root.right!)
            }
            
        }
        return result
    }
}
