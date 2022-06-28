//: [Previous](@previous)

import Foundation
//
//Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
//You may assume that each input would have exactly one solution, and you may not use the same element twice.
//You can return the answer in any order.

//class Solution {
//    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
//        var answer = [Int]()
//        for i in 0 ..< nums.count {
//            let diff = target - nums[i]
//            if nums.contains(diff)  {
//                let index = nums.firstIndex(of: diff)!
//                if index != i {
//                    answer.append(index)
//                    answer.append(i)
//                    break
//                }
//            }
//        }
//        return answer
//    }
//}
