//
//  ListNode.swift
//  ConquerAlgorithm
//
//  Created by Freelf on 2020/11/2.
//  Copyright © 2020 Freelf. All rights reserved.
//

import Foundation

// Definition for singly-linked list.
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

public func printLinkList(_ head:ListNode?) {
    var cur = head;
    while cur != nil {
        print(cur!.val)
        cur = cur?.next
    }
}
