//: [Previous](@previous)

import Foundation
import UIKit

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
//
//var rr = "fnnf"
//var rrr = Set(rr)
//print(Set(rr).count)

//Given array of integers, find the maximal possible sum of some of its k consecutive elements.

//func arrayMaxConsecutiveSum(inputArray: [Int], k: Int) -> Int {
//var maxSum = 0
//    for i in 0 ... (inputArray.count - k) {
//        let tempArr = inputArray[i ... (i + k - 1)]
//        if tempArr.reduce(0, +) > maxSum {
//            maxSum = tempArr.reduce(0, +)
//        }
//    }
//    return maxSum
//}
//
//arrayMaxConsecutiveSum(inputArray: [1, 3, 2, 4], k: 3)

// Dark Wilderness //

// Caring for a plant can be hard work, but since you tend to it regularly, you have a plant that grows consistently. Each day, its height increases by a fixed amount represented by the integer upSpeed. But due to lack of sunlight, the plant decreases in height every night, by an amount represented by downSpeed.

//Since you grew the plant from a seed, it started at height 0 initially. Given an integer desiredHeight, your task is to find how many days it'll take for the plant to reach this height.


//func growingPlant(upSpeed: Int, downSpeed: Int, desiredHeight: Int) -> Int {
//    var plantsAltDay = 0
//    var plantsAltNight = 0
//    var answerDay = 0
//
//    for _ in 0... {
//        plantsAltDay = plantsAltNight + upSpeed
//        answerDay += 1
//        if plantsAltDay >= desiredHeight {
//            break
//        }
//        plantsAltNight = plantsAltDay - downSpeed
//    }
//    return answerDay
//}
//
//growingPlant(upSpeed: 100, downSpeed: 10, desiredHeight: 910)


// You found two items in a treasure chest! The first item weighs weight1 and is worth value1, and the second item weighs weight2 and is worth value2. What is the total maximum value of the items you can take with you, assuming that your max weight capacity is maxW and you can't come back for the items later?

//Note that there are only two items and you can't bring more than one item of each type, i.e. you can't take two first items or two second items.

//func knapsackLight(value1: Int, weight1: Int, value2: Int, weight2: Int, maxW: Int) -> Int {
//    guard [weight1, weight2].min()! <= maxW else {
//        return 0
//    }
//
//    if weight1 + weight2 <= maxW {
//        return value2 + value1
//    } else if [weight1, weight2].max()! <= maxW {
//        return [value1, value2].max()!
//    } else if weight2 > maxW {
//        return value1
//    }
//    return value2
//}
//
//knapsackLight(value1: 15, weight1: 2, value2: 20, weight2: 3, maxW: 2)
//
//func knaffpsackLight(value1: Int, weight1: Int, value2: Int, weight2: Int, maxW: Int) -> Int {
//    return weight1 + weight2 <= maxW ? value1 + value2 : max(weight1 <= maxW ? value1 : 0, weight2 <= maxW ? value2 : 0)
//}

// Given a string, output its longest prefix which contains only digits.


// не увидел что в задаче про префикс -> не считать пробелы
// и что в середине числа это не префикс



//func longestDigitsPrefix(inputString: String) -> String {
//    var answerStr = ""
//    var tempStr = ""
//
//    for element in inputString {
//        if element == " " {
//            return answerStr
//        } else  if Int(String(element)) != nil {
//            tempStr.append(element)
//            if tempStr.count > answerStr.count {
//                answerStr = tempStr
//            }
//        } else {
//            tempStr = ""
//        }
//    }
//    return answerStr
//}
//
//longestDigitsPrefix(inputString: "1j2c42ciu5ie99xr0vq5w1slwhq985fp2239qc196d66m")

//func longestDiffgitsPrefix(inputString: String) -> String {
//    return inputString.components(separatedBy: CharacterSet.decimalDigits.inverted).first ?? ""
//}

//func longestDigitsPrefix(inputString: String) -> String {
//    return String(inputString.prefix{ $0.isNumber })
//}

//Let's define digit degree of some positive integer as the number of times we need to replace this number with the sum of its digits until we get to a one digit number.
//
//Given an integer, find its digit degree.
// brilliant

//func digitDegree(n: Int) -> Int {
//    func madeArrReduce (num: Int) -> Int {
//        return String(num).map { Int(String($0))! }.reduce(0, +)
//    }
//    var count = 0
//    var tempNum = n
//    while String(tempNum).count > 1 {
//        tempNum = madeArrReduce(num: tempNum)
//        count += 1
//    }
//    return count
//}
//
//digitDegree(n: 44444444444455555)

// подумать о рекурсии

//func digitDevgree(n: Int) -> Int {
//    return n > 9 ? 1 + digitDevgree(n: String(n).characters.map { Int(String($0))! }.reduce(0) { $0 + $1 }) : 0
//}

//Given the positions of a white bishop and a black pawn on the standard chess board, determine whether the bishop can capture the pawn in one move.
//
//The bishop has no restrictions in distance for each move, but is limited to diagonal movement. Check out the example below to see how it can move:

// следить за сравниваемым типом данных/


//func bishopAndPawn(bishop: String, pawn: String) -> Bool {
//    let arrBishop = bishop.map { Character(String($0)).asciiValue! }
//    let arrPawn = pawn.map { Character(String($0)).asciiValue! }
//    
//    return abs(Int(arrBishop[0]) - Int(arrPawn[0])) == abs(Int(arrBishop[1]) - Int(arrPawn[1]))
//}
