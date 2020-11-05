//
//  ReverseLinkList.swift
//  ConquerAlgorithm
//
//  Created by Freelf on 2020/11/2.
//  Copyright © 2020 Freelf. All rights reserved.
//

// 反转链表
// https://leetcode-cn.com/problems/reverse-linked-list/
import Foundation

class ReverseListSolution {
    // 递归解法
    func reverseListRecursive(_ head: ListNode?) -> ListNode? {
        guard let oldHead = head, oldHead.next != nil else {
            return head
        }
        let newHead = reverseListRecursive(oldHead.next)
        oldHead.next?.next = oldHead
        oldHead.next = nil
        return newHead
    }
    // 双指针解法1 prev在newHead前面
    func reverseListDoublePointOne(_ head: ListNode?) -> ListNode? {
        guard let oldHead = head, oldHead.next != nil else {
            return head
        }
        var prev = head
        var newHead: ListNode? = nil
        while prev != nil {
            let temp = prev?.next
            prev?.next = newHead
            newHead =  prev
            prev = temp
        }
        return newHead
    }
    // 双指针解法2 prev最开始和newHead在一起，移动newHead和prev.next
    func reverseListDoublePointTwo(_ head: ListNode?) -> ListNode? {
        guard let oldHead = head, oldHead.next != nil else {
            return head
        }
        var newHead = head
        while oldHead.next != nil {
            let temp = oldHead.next?.next
            oldHead.next?.next = newHead
            newHead = oldHead.next
            oldHead.next = temp
        }
        return newHead
    }
}
