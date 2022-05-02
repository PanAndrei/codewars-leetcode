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

//for i in 1 ... 999 {
//    var diviseSet = Set<Int>()
//    for j in 1 ..< i {
//        let divise = i % j
//        if divise < 10 {
//            diviseSet.insert(divise)
//        }
//    }
//    if diviseSet.count < 9 {
//        print(i)
//    }
//    diviseSet = []
//}

//print(String(12345).map { $0 }.max())

//var arr = [3, [4, 5], [7, [8, 5]], [3, [3, [2, [2], 2], 5]]] as [Any]


//let arr = [[3, 3], [4, 4]]
//let tt = arr.flatMap { $0 }
//print(tt)
//let ff = arr.map($0).joined()

//print(Int.max)
//print(MemoryLayout<String>.size)
//print(MemoryLayout<Int>.size)


//let array = [3, [4, 5], [7, [8, 5]], [3, [3, [2, [2], 2], 5]]] as [Any]
//
//var stringArray = "\(array)".compactMap { Int(String($0)) }
//
//print(stringArray)
//
//
//func line<T>(a: [Any]) -> [T] {
//  var b: [T] = []
//  a.forEach {
//    if $0 is Array<Any> {
//      b += line(a: $0 as! [Any])
//    } else {
//      if let n = $0 as? T {
//        b.append(n)
//      }
//    }
//  }
//  return b
//}
//
//let b: [Int] = line(a: Array<Any>)
//print(b)
//
//line(a: array)

//let array: [Any] = [1,[2,1],[3,[111,[2222],22]],4,5,[11],6,7]
//var intArray = [Any]()
//func makeIntArray(array: [Any]) {
//    for element in array {
//        if element is Int {intArray.append(element)}
//        else {
//            if element is [Any] {
//                makeIntArray(array: element as! [Any])
//            }
//        }
//    }
//}
//
//print(makeIntArray(array: array))

//3^5^3
//

//var arr = [String]()
//
//if let path = Bundle.main.path(forResource: "advent_10.test", ofType: "txt") {
//    if let text = try? String(contentsOfFile: path) {
//        arr = text.components(separatedBy: " ")
//    }
//}
//
//var nn = arr.compactMap { Int($0) }
//nn.append(365)
//
//let nnn = [2, 1, 4, 5, 1, 3, 3]
//
//func solve(array: [Int], position: Int) -> Int {
//        var count = array[position]
//
//    for i in (position + 1) ..< array.count {
//        if array[i] >= array[position] {
//            count += array[position]
//        } else {
//            break
//        }
//    }
//
//    for i in 0 ..< position {
//        if position - i - 1 > 0 {
//            if array[position - i - 1] >= array[position] {
//                count += array[position]
//            } else {
//                break
//            }
//        }
//    }
//    print(count)
//        return count
//
//    }
//
//    func funcMain(array: [Int]) -> Int {
//        var area = 0
//        for a in 0 ... array.count - 1 {
//            var x = solve(array: array, position: a)
//            if x > area {
//                area = x
//            }
//        }
//
//        return area
//    }
////print(nn)
//funcMain(array: nn)


//fibbonaci throw enum 


//func fib(_ i: Int) -> Int {
//    switch i {
//    case 0, 1: return 1
//    case let n: return fib(n - 1) + fib(n - 2)
//    }
//}
//
//fib(6)

// идет отступ от значения 0
//

//func fib(_ i: Int) -> Int {
//    switch i {
//    case 0, 1: return 1
//    case let n: return fib(n - 1) + fib(n - 2)
//    }
//}
//
//fib(6)

// идет отступ от значения 0
//

// refacor
