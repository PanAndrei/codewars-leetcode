//: [Previous](@previous)

import Foundation

//You are given a sorted unique integer array nums.
//
//A range [a,b] is the set of all integers from a to b (inclusive).
//
//Return the smallest sorted list of ranges that cover all the numbers in the array exactly. That is, each element of nums is covered by exactly one of the ranges, and there is no integer x such that x is in one of the ranges but not in nums.
//
//Each range [a,b] in the list should be output as:
//
//"a->b" if a != b
//"a" if a == b

//let nums = [0,2,3,4,6,8,9]
//
////class Solution {
//func summaryRanges(_ nums: [Int]) -> [String] {
//    var answer = [String]()
//    var subArr = [Int]()
//    for i in 0 ..< nums.count {
//        subArr.append(nums[i])
//
//        if (i + 1) < nums.count {
//            if nums[i + 1] - nums[i] > 1 {
//                if subArr.count > 1 {
//                    answer.append(String(subArr.first!) + "->" + String(subArr.last!))
//                } else {
//                    answer.append(String(subArr[0]))
//                }
//                subArr = []
//            }
//        } else {
//            if subArr.count > 1 {
//                answer.append(String(subArr.first!) + "->" + String(subArr.last!))
//            } else {
//                answer.append(String(subArr[0]))
//            }
//        }
//    }
//    return answer
//}
////}
//
//summaryRanges(nums)


//Definition for singly-linked list.

//public class ListNode {
//    public var val: Int
//    public var next: ListNode?
//    public init() { self.val = 0; self.next = nil; }
//    public init(_ val: Int) { self.val = val; self.next = nil; }
//    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
//}
//
//class Solution {
//    func reverseList(_ head: ListNode?) -> ListNode? {
//       return reverseListInternal(head, nil)
//    }
//
//    func reverseListInternal(_ current: ListNode?, _ previous: ListNode?) -> ListNode? {
//        if current == nil { return previous }
//
//        var next = current!.next
//        current!.next = previous
//
//        return reverseListInternal(next, current)
//      }
//}
