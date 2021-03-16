//
//  SymmetricTree.swift
//  ConquerAlgorithm
//
//  Created by Freelf on 2021/3/16.
//  Copyright © 2021 Freelf. All rights reserved.
//

import Foundation




 
class SymmetricTreeSolution {
    func isSymmetric(_ root: TreeNode?) -> Bool {
        if root == nil {
            return true
        }
        return compare(root!)
    }
    func compare(_ lhs: TreeNode?, _ rhs: TreeNode?) -> Bool {
        // terminator
        if lhs == nil && rhs != nil {
            return false
        } else if lhs != nil && rhs == nil {
            return false
        } else if lhs == nil && rhs == nil {
            return true
        } else if lhs?.val != rhs?.val {
            return false
        }
        
        let lhsSame = compare(lhs?.left, rhs?.right)
        let rhsSame = compare(lhs?.right, rhs?.left)
        return lhsSame && rhsSame
    }
    func compare(_ root: TreeNode) -> Bool {
        var array = [root.left, root.right]
        while !array.isEmpty {
            let lhs = array.removeFirst()
            let rhs = array.removeFirst()
            if lhs == nil &&  rhs == nil {
                continue
            } else if lhs != nil && rhs == nil {
                return false
            } else if lhs == nil && rhs != nil {
                return false
            } else if lhs?.val != rhs?.val{
                return false
            }
            array.append(lhs?.left)
            array.append(rhs?.right)
            array.append(lhs?.right)
            array.append(rhs?.left)
        }
        return true
    }
}
