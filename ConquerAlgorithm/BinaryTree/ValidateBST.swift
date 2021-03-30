//
//  ValidateBST.swift
//  ConquerAlgorithm
//
//  Created by Freelf on 2021/3/17.
//  Copyright © 2021 Freelf. All rights reserved.
//

// https://leetcode-cn.com/problems/validate-binary-search-tree/
// 98. 验证二叉搜索树

import Foundation
class ValidateBSTSolution {
    var prev = Int.min
    func isValidBST(_ root: TreeNode?) -> Bool {
        if root == nil {
            return true
        }
        // 先判断左子树是否为BST
        if (!isValidBST(root?.left)) { return false }
        // 如果左侧是BST，那根节点和左侧的值比较
        if  root!.val <= prev { return false }
        prev = root!.val
        // 判断右侧是否为BST
        return isValidBST(root?.right)
    }
}
