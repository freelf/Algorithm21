//
//  LinkedListCycle.swift
//  ConquerAlgorithm
//
//  Created by Freelf on 2020/11/6.
//  Copyright © 2020 Freelf. All rights reserved.
//

// 141. 环形链表
// https://leetcode-cn.com/problems/linked-list-cycle/

import Foundation

class LinkedListCycle {
    func hasCycle(_ head: ListNode?) -> Bool {
        if head?.next == nil || head == nil {
            return false
        }
        var slow = head
        var fast = head
        while fast != nil || fast?.next != nil {
            fast = fast?.next?.next
            slow = slow?.next
            if slow === fast {
                return true
            }
        }
        return false
    }
}

