//
//  AddTwoNumbers.swift
//  ConquerAlgorithm
//
//  Created by Freelf on 2021/3/12.
//  Copyright © 2021 Freelf. All rights reserved.
//

import Foundation

class AddTwoNumbersSolution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        if l1 == nil {
            return l2
        }
        if l2 == nil {
            return l1
        }
        var l1 = l1
        var l2 = l2
        var carry = 0
        let dummyHead = ListNode()
        var currentNode = dummyHead
        while l1 != nil || l2 != nil {
            var value = (l1?.val ?? 0) + (l2?.val ?? 0) + carry
            if value > 9 {
                value -= 10
                carry = 1
            } else {
                carry = 0
            }
            currentNode.next = ListNode(value)
            currentNode = currentNode.next!
            l1 = l1?.next
            l2 = l2?.next
        }
        if carry == 1 {
            let newNode = ListNode(1)
            currentNode.next = newNode
        }
        return dummyHead.next
    }
}
