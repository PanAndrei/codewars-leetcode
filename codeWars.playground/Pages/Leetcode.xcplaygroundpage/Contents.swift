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

//print("([)]".map { Character(String($0)).asciiValue! })
//
//    func isValid(_ s: String) -> Bool {
//        var arrString = s.map { String($0) }
//
//        for _ in 0 ... 10_000 {
//            for i in 0 ..< arrString.count - 1 {
//                if arrString[i] ==
//            }
//        }
//
//
//
//
//        for _ in 0 ... 10_000 {
//            for i in 0 ..< arrString.count - 1 {
//                if arrString[i] == "." {
//                    continue
//                }
//                for j in i ..< arrString.count {
//                    if arrString[j] == "." {
//                        continue
//                    }
//                    if Int(Character(arrString[j]).asciiValue!) - Int(Character(arrString[i]).asciiValue!) == 1 ||
//                        Int(Character(arrString[j]).asciiValue!) - Int(Character(arrString[i]).asciiValue!) == 2 {
//                        arrString[j] = "."
//                        arrString[i] = "."
//                        continue
//                    } else {
//                        con
//                    }
//                }
//            }
//            if arrString.filter({ $0 == "." }).count == 0 {
//                return false
//            }
//        }
//        return arrString.filter { $0 == "." }.count == s.count
//    }
//
//isValid("([)]")
//


//You are given a large integer represented as an integer array digits, where each digits[i] is the ith digit of the integer. The digits are ordered from most significant to least significant in left-to-right order. The large integer does not contain any leading 0's.
//
//Increment the large integer by one and return the resulting array of digits.


// only for valid int
//func plusOne(_ digits: [Int]) -> [Int] {
//   let initial = digits.map { String ($0) }.reduce("", +)
//    print(initial)
//    return String(Int(initial)! + 1).map { Int(String($0))! }
//}

//func plusOne(_ digits: [Int]) -> [Int] {
//    var result = digits
//    for i in 0 ..< result.count {
//        if result[result.count - 1 - i] < 9 {
//            result[result.count - 1 - i] += 1
//            break
//        } else {
//            if result.count - 1 - i == 0 {
//                result[0] = 0
//                result.insert(1, at: 0)
//                break
//            } else {
//                result[result.count - 1 - i] = 0
//                result[result.count - 2 - i] += 1
//                if result[result.count - 2 - i] < 10 {
//                    break
//                }
//            }
//        }
//    }
//    return result
//}
//
////
//
////correct one
//
//
//struct Easy_066_Plus_One {
//    static func plusOne(_ digits: inout [Int]) {
//        let n = digits.count
//        for i in (0 ... n-1).reversed() {
//            if digits[i] == 9 {
//                digits[i] = 0
//            } else {
//                digits[i] += 1
//                return
//            }
//        }
//        digits[0] = 1
//        digits.append(0)
//    }
//}
//
//
//
//plusOne([8,9,9,9])
//plusOne([9,9])
//plusOne([9])
//plusOne([7,2,8,5,0,9,1,2,9,5,3,6,6,7,3,2,8,4,3,7,9,5,7,7,4,7,4,9,4,7,0,1,1,1,7,4,0,0,6])
