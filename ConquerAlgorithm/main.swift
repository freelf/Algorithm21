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

//var arr1 = [9, 9]

//print(PlusOneSolution().plusOne(arr1))
//print(ValidateBSTSolution().isValidBST(tree))
//print(SqrtXSolution().mySqrt(3))
//print(PreorderTraversalSolution().preorderTraversal3(tree))
//print(DecodeStringSolution().decodeString2("3[a]2[bc]"))
let tree = TreeNode.init(1, TreeNode(2, TreeNode(3), nil), TreeNode(3, nil, TreeNode(4)))

print(MaximumDepthOfBinaryTreeSolution().maxDepth2(tree))
