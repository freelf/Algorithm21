//
//  MergeSortedArray.swift
//  ConquerAlgorithm
//
//  Created by Freelf on 2021/3/15.
//  Copyright © 2021 Freelf. All rights reserved.
//
// https://leetcode-cn.com/problems/merge-sorted-array/
// 88. 合并两个有序数组
import Foundation

class MergeSortedArraySolution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var m = m
        var n = n
        while n > 0 {
            if m > 0 {
                if nums2[n - 1] > nums1[m - 1] {
                    nums1[n + m - 1] = nums2[n - 1]
                    n -= 1
                } else {
                    nums1[n + m - 1] = nums1[m - 1]
                    m -= 1
                }
            } else {
                nums1[n - 1] = nums2[n - 1]
                n -= 1
            }
        }
    }
    func merge2(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var insert = m + n - 1
        var m = m - 1
        var n = n - 1
        while m >= 0 && n >= 0 {
            if nums1[m] > nums2[n] {
                nums1[insert] = nums1[m]
                m -= 1
            } else {
                nums1[insert] = nums2[n]
                n -= 1
            }
            insert -= 1
        }
        while n >= 0 {
            nums1[n] = nums2[n]
            n -= 1
        }
    }
}
