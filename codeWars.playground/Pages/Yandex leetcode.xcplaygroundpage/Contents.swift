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

//var v: Array<Int> = []
//var n = [Int]()
//v.append(1)
//v

//Given an integer array nums, move all 0's to the end of it while maintaining the relative order of the non-zero elements.
//
//Note that you must do this in-place without making a copy of the array.

//var nums = [0,1,0,3,12]
//
//class Solution {
//    func moveZeroes(_ nums: inout [Int]) {
//        nums = nums.filter { $0 != 0 } + Array(repeating: 0, count: nums.filter { $0 == 0 }.count)
//    }
//}
//
//
//let sol = Solution()
//sol.moveZeroes(&nums)
//
//nums


//A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.
//
//Given a string s, return true if it is a palindrome, or false otherwise.


//class Solution {
//    func isPalindrome(_ s: String) -> Bool {
//        return s.map { $0.lowercased() }.filter { Character($0).isLetter || Character($0).isNumber } == s.map { $0.lowercased() }.filter { Character($0).isLetter || Character($0).isNumber }.reversed()
//    }
//}
//
//let spl = Solution()
//spl.isPalindrome("0P")

//func isPalindrome(_ s: String) -> Bool {
//    let result = s.lowercased().replacingOccurrences(of:"[^a-z0-9]", with: "", options: .regularExpression)
//    return result == String(result.reversed())
//
//}


//Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
//
//An input string is valid if:
//
//Open brackets must be closed by the same type of brackets.
//Open brackets must be closed in the correct order.

//class Solution {
//    func isValid(_ s: String) -> Bool {
//        var arr = Array(s)
//    }
//}


// тинькоф 1

//for i in 1 ... 9 {
//    let number = Int(String(i) + String(i))!
//    var diviseSet = Set<Int>()
//    for j in 1 ..< number {
//        let num = number % j
//        if String(num).count > 1 {
//            if Set(String(num).map { $0 }).count == 1 {
//                diviseSet.insert(num)
//            }
//        }
//    }
//    print(number, diviseSet)
//}
