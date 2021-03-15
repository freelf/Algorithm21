//
//  main.swift
//  ConquerAlgorithm
//
//  Created by Freelf on 2020/11/2.
//  Copyright © 2020 Freelf. All rights reserved.
//

import Foundation

var head = ListNode(-1)
head.next = ListNode(-7)
head.next?.next = ListNode(7)
head.next?.next?.next = ListNode(-4)
head.next?.next?.next?.next = ListNode(19)

//
//var head2 = ListNode(9)
//head2.next = ListNode(9)
//head2.next?.next = ListNode(9)
//head2.next?.next?.next = nil
//
//var result = AddTwoNumbersSolution().addTwoNumbers(head, head2)
//
//printLinkList(result)
//print(ThreeSum().threeSum([-1]))
//print(ThreeSumClosestSolution().threeSumClosest([1,1,1,1], -100))

var arr1 = [9, 9]

print(PlusOneSolution().plusOne(arr1))
//print(MiddleOfTheLinkedListSolution().middleNode(head)?.val)
print(TwoSumSolution().twoSum2([3, 2, 4], 6))
