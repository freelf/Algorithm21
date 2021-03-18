//
//  File.swift
//  ConquerAlgorithm
//
//  Created by Freelf on 2021/3/16.
//  Copyright © 2021 Freelf. All rights reserved.
//

// https://leetcode-cn.com/problems/balanced-binary-tree/
// 110. 平衡二叉树
import Foundation
class BalancedBinaryTreeSolution {
    // 平衡二叉树：每个节点的左右子树高度差不超过1
    // 这种方式会在平衡二叉树时频繁计算子树的高度
    func isBalanced(_ root: TreeNode?) -> Bool {
        if root == nil {
            return true
        }
        if abs(height(of: root?.left) - height(of: root?.right)) > 1 {
            return false
        }
        return isBalanced(root?.left) && isBalanced(root?.right)
    }
    func height(of node: TreeNode?) -> Int {
        if node == nil {
            return 0
        }
        return 1 + max(height(of: node?.left), height(of: node?.right))
    }
    
    // 自底向上计算，这个是从底向上计算，只要不是平衡二叉树就直接返回
    func isBalanced2(_ root: TreeNode?) -> Bool {
        if root == nil { return true }
        return recur(node: root) != -1
    }
    func recur(node: TreeNode?) -> Int {
        if node == nil { return 0 }
        let left = recur(node: node?.left)
        if left == -1 { return -1 }
        let right = recur(node: node?.right)
        if right == -1 { return -1 }
        return abs(left - right) > 1 ? -1 : max(left, right) + 1
    }
}
 
