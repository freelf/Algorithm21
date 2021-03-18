//
//  InvertBinaryTree.swift
//  ConquerAlgorithm
//
//  Created by Freelf on 2021/3/17.
//  Copyright © 2021 Freelf. All rights reserved.
//

// https://leetcode-cn.com/problems/invert-binary-tree/
// 226. 翻转二叉树
import Foundation
class InvertBinaryTreeSolution {
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        // terminator
        if root == nil {
            return nil
        }
        // process
        let temp = root?.right
        root?.right = root?.left
        root?.left = temp
        // drill down
        let _ = invertTree(root?.left)
        let _ = invertTree(root?.right)
        return root
    }
}
