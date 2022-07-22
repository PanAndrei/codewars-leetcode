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

//Write a function to find the longest common prefix string amongst an array of strings
//If there is no common prefix, return an empty string "".
//


//class Solution {
//    func longestCommonPrefix(_ strs: [String]) -> String {
//        let smallest = strs.sorted(by: <).first!.count
//        var answer = ""
//
//        for i in 0 ..< smallest {
//            let part = Array(strs[0].map { String($0) }[0 ... i]).joined(separator: "")
//
//            if strs.filter { $0.hasPrefix(part) }.count == strs.count {
//                answer = part
//                continue
//            } else {
//                return answer
//            }
//        }
//        return answer
//    }
//}


//Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
//
//An input string is valid if:
//
//Open brackets must be closed by the same type of brackets.
//Open brackets must be closed in the correct order.

print("([)]".map { Character(String($0)).asciiValue! })

    func isValid(_ s: String) -> Bool {
        var arrString = s.map { String($0) }
        
        for _ in 0 ... 10_000 {
            for i in 0 ..< arrString.count - 1 {
                if arrString[i] ==
            }
        }
        
        
        
        
        for _ in 0 ... 10_000 {
            for i in 0 ..< arrString.count - 1 {
                if arrString[i] == "." {
                    continue
                }
                for j in i ..< arrString.count {
                    if arrString[j] == "." {
                        continue
                    }
                    if Int(Character(arrString[j]).asciiValue!) - Int(Character(arrString[i]).asciiValue!) == 1 ||
                        Int(Character(arrString[j]).asciiValue!) - Int(Character(arrString[i]).asciiValue!) == 2 {
                        arrString[j] = "."
                        arrString[i] = "."
                        continue
                    } else {
                        con
                    }
                }
            }
            if arrString.filter({ $0 == "." }).count == 0 {
                return false
            }
        }
        return arrString.filter { $0 == "." }.count == s.count
    }

isValid("([)]")

