//
//  PreorderTraversal.swift
//  ConquerAlgorithm
//
//  Created by Freelf on 2021/3/18.
//  Copyright © 2021 Freelf. All rights reserved.
//


import Foundation
class PreorderTraversalSolution {
    var result = [Int]()
    func preorderTraversal(_ root: TreeNode?) -> [Int] {
        if root == nil {
            return result
        }
        
        result.append(root!.val)
        let _ = preorderTraversal(root?.left)
        let _ =  preorderTraversal(root?.right)
        return result
    }
    
    func preorderTraversal2(_ root: TreeNode?) -> [Int] {
        if root == nil {
            return []
        }
        var result = [Int]()
        var stack = [TreeNode]()
        stack.append(root!)
        while !stack.isEmpty {
            let root = stack.removeLast()
            result.append(root.val)
            if root.right != nil {
                stack.append(root.right!)
            }
            if root.left != nil {
                stack.append(root.left!)
            }
        }
        return result
    }
}
