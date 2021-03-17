//
//  main.swift
//  ConquerAlgorithm
//
//  Created by Freelf on 2020/11/2.
//  Copyright © 2020 Freelf. All rights reserved.
//

import Foundation

//var head = ListNode(9)
//head.next = ListNode(9)
//head.next?.next = ListNode(9)
//head.next?.next?.next = ListNode(9)
//head.next?.next?.next?.next = ListNode(9)
//head.next?.next?.next?.next?.next = nil
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
let tree = TreeNode.init(3, TreeNode.init(9,nil, nil), TreeNode(20, TreeNode(15), TreeNode(7)))
//print(PlusOneSolution().plusOne(arr1))
print(BalancedBinaryTreeSolution.init().isBalanced(tree))
