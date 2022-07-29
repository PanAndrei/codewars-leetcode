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

//Given an integer array nums sorted in non-decreasing order, remove the duplicates in-place such that each unique element appears only once. The relative order of the elements should be kept the same.
//
//Since it is impossible to change the length of the array in some languages, you must instead have the result be placed in the first part of the array nums. More formally, if there are k elements after removing the duplicates, then the first k elements of nums should hold the final result. It does not matter what you leave beyond the first k elements.
//
//Return k after placing the final result in the first k slots of nums.
//
//Do not allocate extra space for another array. You must do this by modifying the input array in-place with O(1) extra memory.

//var arr = [1,2,3,4,4,4]
//
//func removeDuplicates(_ nums: inout [Int]) -> Int {
//    nums = Array(Set(nums)).sorted(by: <)
//    return nums.count
//}
//
//removeDuplicates(&arr)
//print(arr)

// так дольше

//class Solution {
//     func removeDuplicates(_ arr: inout [Int]) -> Int {
//        if arr.count < 2 {
//            return arr.count
//        }
//        var index: Int = 1
//        let n: Int = arr.count
//        for i in 1 ..< n {
//            if arr[i] != arr[i-1] {
//                arr[index] = arr[i]
//                index += 1
//            }
//        }
//        return index
//    }
//}


//You are given an array prices where prices[i] is the price of a given stock on the ith day.
//
//You want to maximize your profit by choosing a single day to buy one stock and choosing a different day in the future to sell that stock.
//
//Return the maximum profit you can achieve from this transaction. If you cannot achieve any profit, return 0.

//var prices = [7,1,5,3,6,4]
//var pr2 = [3,3,5,0,0,3,1,4]

// правильно но на больших время вылетает
//    func maxProfit(_ prices: [Int]) -> Int {
//        var answer = 0
//
//        for i in 0 ..< prices.count - 1 {
//            if prices[i + 1 ... prices.count - 1].max()! - prices[i] > answer {
//                answer = prices[i + 1 ... prices.count - 1].max()! - prices[i]
//            }
//        }
//
//        return answer
//    }


// perfect 93% faster

//func maxProfit(_ prices: [Int]) -> Int {
//    var answer = 0
//
//    var min = (10000, -1)
//    var max = (-1, -2)
//
//    for i in 0 ..< prices.count {
//        if prices[i] < min.0 {
//            min.0 = prices[i]
//            min.1 = i
//        } else if prices[i] >= min.0 && i > min.1 {
//            max.0 = prices[i]
//            max.1 = i
//
//            if max.0 - min.0 > answer {
//                answer = max.0 - min.0
//            }
//        }
//    }
//
//    return answer
//}
//
//maxProfit(pr2)

// very best

//func maxProfit(_ prices: [Int]) -> Int {
//       var buyPrice = prices.first!
//       var right = 0
//       var profit = 0
//
//       while right < prices.count {
//           let price = prices[right]
//
//           profit = max(profit, price - buyPrice)
//
//           if price < buyPrice {
//               buyPrice = price
//           }
//           right += 1
//       }
//
//       return profit
//   }


//Given a string s, find the first non-repeating character in it and return its index. If it does not exist, return -1.

// работает красиво но долго

//func firstUniqChar(_ s: String) -> Int {
//    let arr = s.map { String($0) }
//
//    for i in 0 ..< arr.count {
//        if arr.filter { $0 == arr[i] }.count == 1 {
//            return i
//        }
//    }
//
//    return -1
//}


// плохо долго но работает

//func firstUniqChar(_ s: String) -> Int {
//    let arr = s.map { String($0) }
//    let allCahrs = Set(arr)
//    var answer = -1
//
//    for element in allCahrs {
//        if arr.filter { $0 == element }.count == 1 {
//            let index = arr.firstIndex(of: element)!
//            if answer == -1 {
//                answer = index
//            } else {
//                if index < answer {
//                    answer = index
//                }
//            }
//        }
//    }
//    return answer
//}
//
//firstUniqChar("leetcode")

//var ss = "ddda"
//var fe = ss.components(separatedBy: ".")
//var fed = ss.split(separator: ".")
//var fed = Array(ss)
//print(fe)

// kruto

//    let a = Int(Character("a").asciiValue!)
//
//    func firstUniqChar(_ s: String) -> Int {
//        var array = Array(repeating: 0, count: 26)
//        for char in s.utf8 {
//            let offset = Int(char) - a
//            array[offset] = array[offset] + 1
//        }
//        print(array)
//
//        for (index, char) in s.utf8.enumerated() {
//            let offset = Int(char) - a
//            if array[offset] == 1 {
//                return index
//            }
//        }
//        return -1
//    }
//
//firstUniqChar("leetcode")


//Given an integer x, return true if x is palindrome integer.
//
//An integer is a palindrome when it reads the same backward as forward.
//
//For example, 121 is a palindrome while 123 is not.

//let bb = String(334).reversed()
//let ff = String(bb)
//
//func isPalindrome(_ x: Int) -> Bool {
//    guard x > 0 else { return false }
//    return x == Int(String(String(x).reversed()))!
//}
//
//isPalindrome(121)


// very fast

//func isPalindrome(_ x: Int) -> Bool {
//        if (x < 0 || (x % 10 == 0 && x != 0)) {
//            return false
//        }
//        var x = x
//        var reversedNumber = 0
//
//        while (x > reversedNumber) {
//            reversedNumber = reversedNumber * 10 + x % 10
//            x /= 10
//        }
//
//        return x == reversedNumber || x == reversedNumber / 10
//    }
