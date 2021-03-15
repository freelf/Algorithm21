//
//  MiddleOfTheLinkedList.swift
//  ConquerAlgorithm
//
//  Created by Freelf on 2021/3/14.
//  Copyright © 2021 Freelf. All rights reserved.
//

import Foundation
class MiddleOfTheLinkedListSolution {
    func middleNode(_ head: ListNode?) -> ListNode? {
        if head == nil {
            return nil
        }
        var fast = head
        var slow = head
        while fast != nil && fast?.next != nil {
            fast = fast?.next?.next
            slow = slow?.next
        }
        return slow
    }
}
