//
//  MergeTwoSortedLists.swift
//  ConquerAlgorithm
//
//  Created by Freelf on 2021/3/10.
//  Copyright © 2021 Freelf. All rights reserved.
//
// https://leetcode-cn.com/problems/merge-two-sorted-lists/
// 21. 合并两个有序链表
import Foundation


// Definition for singly-linked list.

class Solution {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        guard let list1 = l1 else {
            return l2
        }
        guard let list2 = l2 else {
            return l2
        }
        if list1.val <= list2.val {
            list1.next = mergeTwoLists(list1.next, list2)
            return list1
        } else {
            list2.next = mergeTwoLists(list1, list2.next)
            return list2
        }
    }
}
