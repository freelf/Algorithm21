//
//  LinkedListCycleII.swift
//  ConquerAlgorithm
//
//  Created by Freelf on 2021/3/14.
//  Copyright © 2021 Freelf. All rights reserved.
//

import Foundation
class LinkedListCycleIISolution {
    func detectCycle(_ head: ListNode?) -> ListNode? {
        if head == nil || head?.next == nil {
            return nil
        }
        var slow = head
        var fast = head
        var hasCycle = false
        while fast != nil || fast?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
            if slow === fast {
                fast = head
                hasCycle = true
                break
            }
        }
        while hasCycle && fast !== slow {
            fast = fast?.next
            slow = slow?.next
        }
        if hasCycle {
            return fast
        }
        return nil
    }
    func detectCycle2(_ head: ListNode?) -> ListNode? {
        var slow = head
        var fast = head
        while true {
            if fast == nil || fast?.next == nil {
                return nil
            }
            slow = slow?.next
            fast = fast?.next?.next
            if slow === fast {
                break
            }
        }
        fast = head
        while fast !== slow {
            fast = fast?.next
            slow = slow?.next
        }
        return fast
    }
}
