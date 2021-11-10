//: [Previous](@previous)

import Foundation

//Given array of integers, remove each kth element from it.

//func extractEachKth(inputArray: [Int], k: Int) -> [Int] {
//    guard k > 1 else {
//        return []
//    }
//    var newArr = inputArray
//    var answerArr = inputArray
//    for i in 0 ... (newArr.count - 1) {
//        if i == 0 {
//            continue
//        } else if (i + 1) % k == 0 {
//            newArr[i] = 25
//        }
//    }
//   answerArr =  newArr.filter { $0 != 25}
//    return answerArr
//}
//
//print(extractEachKth(inputArray: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], k: 3))
//
//func extractEachKth(inputArray: [Int], k: Int) -> [Int] {
//    return inputArray.enumerated().filter { offset, _ in (offset + 1) % k != 0 }.map { _, value in value }
//}


//Find the leftmost digit that occurs in a given string.

//func firstDigit(inputString: String) -> Character {
//    for element in inputString {
//        if Int(String(element)) != nil {
//            return element
//        }
//    }
//    return Character("f")
//}
//
//func firstDiffgit(inputString: String) -> Character {
//    return Character(String(inputString.characters.map{Int(String($0))}.flatMap{$0}[0]))
//}

//Given a string, find the number of different characters in it.

//func differentSymbolsNaive(s: String) -> Int {
//    return Set(s.map{$0}).count
//}
