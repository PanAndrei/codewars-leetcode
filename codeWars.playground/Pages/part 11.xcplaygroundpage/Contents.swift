//: [Previous](@previous)

import Foundation


//Given two strings a and b, both consisting only of lowercase English letters, your task is to calculate how many strings equal to a can be constructed using only letters from the string b? Each letter can be used only once and in one string only.


// офигенно но долго
// а правильное решение было таким же!
//func solution4(a: String, b: String) -> Int {
//    var min = b.count
//    var checked = [Character]()
//    for i in 0 ..< a.count {
//        if checked.contains(a.map { $0 }[i]) {
//            continue
//        }
//        let count = b.filter{ $0 == (a.map { $0 }[i]) }.count / a.filter{ $0 == (a.map { $0 }[i]) }.count
//        checked.append(a.map { $0 }[i])
//        if count < min {
//            min = count
//        }
//    }
//    return min
//}
//
//solution(a: "abcn", b: "aannaaabcbcb")
//
//// dolgo
//func solution(a: String, b: String) -> Int {
//    guard Set(b.map { $0 }).isSuperset(of: Set(a.map { $0 })) else { return 0}
//
//    let nn = b.filter { a.contains($0)}
//
//    let arrB = nn.map { $0 }.sorted { f, s in
//        nn.filter { $0 == f}.count < nn.filter { $0 == s}.count
//    }
//
//    let arrA = a.map { $0 }.sorted { f, s in
//        a.filter { $0 == f}.count > a.filter { $0 == s}.count
//    }
//
//
//    let var1 = arrB.filter { $0 == arrB[0]}.count / arrA.filter { $0 == arrB[0]}.count
//    let var2 = arrB.filter { $0 == arrA[0]}.count / arrA.filter { $0 == arrA[0]}.count
//
//    return var1 < var2 ? var1 : var2
//}
//
//func solution(a: String, b: String) -> Int {
//    guard Set(b.map { $0 }).isSuperset(of: Set(a.map { $0 })) else { return 0}
//
//    return 0
//}

////A ciphertext alphabet is obtained from the plaintext alphabet by means of rearranging some characters. For example "bacdef...xyz" will be a simple ciphertext alphabet where a and b are rearranged.
////
////A substitution cipher is a method of encoding where each letter of the plaintext alphabet is replaced with the corresponding (i.e. having the same index) letter of some ciphertext alphabet.
////
////Given two strings, check whether it is possible to obtain them from each other using some (possibly, different) substitution ciphers.
//
//func solution7(string1: String, string2: String) -> Bool {
//    let arr1 = string1.map { $0.asciiValue! }
//    let arr2 = string2.map { $0.asciiValue! }
//    print(arr1)
//    print(arr2)
//    
//    for i in 0 ..< arr1.count - 2 {
//        if arr1[i] == arr2[i] {
//            continue
//        } else if abs(Int(arr1[i] - arr2[i])) != abs(Int(arr1[(i + 1)] - arr2[(i + 1)])) {
//            return false
//        }
//    }
//    return true
//}
//
////solution(string1: "abcd", string2: "acbd")
//
//func solution(string1: String, string2: String) -> Bool {
//    let arr1 = string1.map { $0.asciiValue! }
//    let arr2 = string2.map { $0.asciiValue! }
// 
//    
//    for i in 0 ... arr1.count - 2 {
//        if arr1[i] == arr2[i] {
//            continue
//        } else if abs(Int(arr1[i]) - Int(arr2[i])) != abs(Int(arr1[i + 1]) - Int(arr2[i + 1])) || abs(Int(arr1[i]) - Int(arr2[i])) != abs(Int(arr1[i - 1]) - Int(arr2[i - 1]))
//        {
//       
//            return false
//        }
//    }
//    return true
//}
//
//solution(string1: "abcd", string2: "acbd")
//
//
//func solfution(string1: String, string2: String) -> Bool {
//    return Set(Array(zip(Array(string1).map { String($0) }, Array(string2).map { String($0) })).map { $0.0 + $0.1 }).count == Set(Array(string1)).count && Set(Array(string1)).count == Set(Array(string2)).count
//}
