//
//  CountCompleteTreeNodes.swift
//  ConquerAlgorithm
//
//  Created by Freelf on 2021/4/5.
//  Copyright © 2021 Freelf. All rights reserved.
//

import Foundation
class CountCompleteTreeNodesSolution {
    func countNodes(_ root: TreeNode?) -> Int {
        if root == nil {
            return 0
        }
        
        let leftCount = countNodes(root?.left)
        let rightCount = countNodes(root?.right)
        return leftCount + rightCount + 1
    }
    
    func countNodes2(_ root: TreeNode?) -> Int {
        if root == nil {
            return 0
        }
        var queue: [TreeNode] = []
        queue.append(root!)
        var result = 0
        while !queue.isEmpty {
            let size = queue.count
            result += size
            for _ in 0 ..< size {
                let node = queue.removeFirst()
                if let left = node.left {
                    queue.append(left)
                }
                if let right = node.right {
                    queue.append(right)
                }
            }
        }
        return result
    }
}
