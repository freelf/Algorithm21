//
//  main.swift
//  ConquerAlgorithm
//
//  Created by Freelf on 2020/11/2.
//  Copyright © 2020 Freelf. All rights reserved.
//

import Foundation

var head = ListNode(4)
head.next = ListNode(1)
head.next?.next = ListNode(2)
head.next?.next?.next = ListNode(3)
head.next?.next?.next?.next = ListNode(5)
head.next?.next?.next?.next?.next = nil


DeleteNodeSolution().deleteNode(head.next?.next)

printLinkList(head)

