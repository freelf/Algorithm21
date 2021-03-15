//
//  SwapNodesInPairs.swift
//  ConquerAlgorithm
//
//  Created by Freelf on 2021/3/13.
//  Copyright © 2021 Freelf. All rights reserved.
//

import Foundation
class SwapNodesInPairsSolution {
    func swapPairs(_ head: ListNode?) -> ListNode? {
        if head == nil || head?.next == nil {
            return head
        }
        let temp = head?.next
        head?.next = swapPairs(temp?.next)
        temp?.next = head
        return temp
    }
    func swapPairsIteration(_ head: ListNode?) -> ListNode? {
        if head == nil || head?.next == nil {
            return head
        }
        let newHead = head?.next
        var cur = head
        while cur?.next != nil {
            let temp = cur?.next?.next
            cur?.next?.next = cur
            if temp?.next != nil {
                cur?.next = temp?.next
            } else {
                cur?.next = temp
            }
            cur = temp
        }
        return newHead
    }
    func swapPairsIteration2(_ head: ListNode?) -> ListNode? {
        let dummyNode = ListNode()
        dummyNode.next = head
        var temp = dummyNode
        while temp.next != nil && temp.next?.next != nil {
            let start = temp.next
            let end = temp.next?.next
            temp.next = end
            start?.next = end?.next
            end?.next = start
            temp = start!
        }
        return dummyNode.next
    }
}
