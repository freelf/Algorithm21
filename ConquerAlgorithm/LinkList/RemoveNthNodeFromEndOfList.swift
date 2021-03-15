//
//  RemoveNthNodeFromEndOfList.swift
//  ConquerAlgorithm
//
//  Created by Freelf on 2021/3/13.
//  Copyright © 2021 Freelf. All rights reserved.
//

// https://leetcode-cn.com/problems/remove-nth-node-from-end-of-list/
// 19. 删除链表的倒数第 N 个结点
import Foundation
class RemoveNthNodeFromEndOfListSolution {
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        let dummyNode = ListNode(-1, head)
        var front: ListNode? = dummyNode
        var back: ListNode? = dummyNode
        var times = n
        while times > 0 {
            front = front?.next
            times -= 1
        }
        while front?.next != nil {
            front = front?.next
            back = back?.next
        }
        back?.next = back?.next?.next
        return dummyNode.next
    }
}
