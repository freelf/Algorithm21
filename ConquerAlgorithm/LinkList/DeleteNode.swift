//
//  DeleteNode.swift
//  ConquerAlgorithm
//
//  Created by Freelf on 2020/11/2.
//  Copyright © 2020 Freelf. All rights reserved.

// 237. 删除链表中的节点
// https://leetcode-cn.com/problems/delete-node-in-a-linked-list/

import Foundation
class DeleteNodeSolution {
    func deleteNode(_ node: ListNode?) {
        guard let deleteNode = node else {
            return
        }
        deleteNode.val = deleteNode.next!.val
        deleteNode.next = deleteNode.next?.next
    }
}
