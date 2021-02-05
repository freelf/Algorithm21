//
//  RemoveLinkListElement.swift
//  ConquerAlgorithm
//
//  Created by Freelf on 2020/11/9.
//  Copyright © 2020 Freelf. All rights reserved.
//

// 203. 移除链表元素
// https://leetcode-cn.com/problems/remove-linked-list-elements/

import Foundation
class RemoveLinkListElementsSolution {
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        if head == nil {
            return nil
        }
        head?.next = removeElements(head?.next, val)
        if head?.val == val {
            return head?.next
        }
        return head
    }
    func removeElementsOne(_ head: ListNode?, _ val: Int) -> ListNode? {
        
        if head == nil {
            return nil
        }
        var newHead = head
        while newHead?.val == val {
            newHead = newHead?.next
        }
        if newHead == nil {
            return nil
        }
        var prev = newHead
        while prev?.next != nil {
            if prev?.next?.val == val {
                prev?.next = prev?.next?.next
            } else {
                prev = prev?.next
            }
        }
        return newHead
    }
    
    func removeElementsTwo(_ head: ListNode?, _ val: Int) -> ListNode? {
        if head == nil {
            return nil
        }
        let dummyNode = ListNode(val - 1)
        dummyNode.next = head
        var prev: ListNode? = dummyNode
        while prev?.next != nil {
            if prev?.next?.val == val {
                prev?.next = prev?.next?.next
            } else {
                prev = prev?.next
            }
        }
        return dummyNode.next
    }
}
