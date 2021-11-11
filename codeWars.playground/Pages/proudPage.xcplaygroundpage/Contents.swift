//: [Previous](@previous)

import Foundation

/// from the first try!

//func palindromeRearranging(inputString: String) -> Bool {
//    let startArray = inputString.map {String($0)}
//    var arrayOfRepeats : [Int] = []
//    var proceedElements : [String] = []
//
//    startArray.forEach({
//        let element = $0
//
//        guard proceedElements.contains(element) == false
//        else {
//            return
//        }
//
//        let elementcount = startArray.filter({$0 == element}).count
//        arrayOfRepeats.append(elementcount)
//        proceedElements.append(element)
//    })
//
//    if startArray.count % 2 == 0 {
//        let checArr = arrayOfRepeats.filter({$0 % 2 != 0})
//        return checArr.isEmpty
//    } else {
//        let chechArr = arrayOfRepeats.filter({$0 % 2 != 0})
//        return chechArr.count == 1
//    }
//}
//
//palindromeRearranging(inputString: "abdhuierf")
//
//
//
////find minimal  jump
//
//func avoidObstacles(inputArray: [Int]) -> Int {
//    var jump = 1
//    var coordinate = 0
//    while coordinate < inputArray.max()! {
//        coordinate += jump
//        if inputArray.contains(coordinate) {
//            jump += 1
//            coordinate = 0
//        }
//    }
//    return jump
//}

/// guard if even

//func evenDigitsOnly(n: Int) -> Bool {
//    return String(n).map{Int(String($0))}.filter{$0! % 2 != 0}.isEmpty
//}
//
//evenDigitsOnly(n: 248622)


// two cells on chessboard

//Given two cells on the standard chess board, determine whether they have the same color or not.`

//func chessBoardCellColor(cell1: String, cell2: String) -> Bool {
//    let arr1 = cell1.map {String($0)}
//    let arr2 = cell2.map {String($0)}
//
//    let differenseLetter = Int(Character(arr1[0]).asciiValue!) - Int(Character(arr2[0]).asciiValue!)
//    let differenseNumbers = Int(arr1[1])! - Int(arr2[1])!
//
//    if (abs(differenseLetter) + abs(differenseNumbers)) % 2 == 0 {
//        return true
//    } else {
//        return false
//    }
//}
//
//chessBoardCellColor(cell1: "a3", cell2: "b5")

//func chessBovvardCellColor(cell1: String, cell2: String) -> Bool {
//    return  cell1.unicodeScalars.map {$0.value}.reduce(0, +) % 2 ==
//            cell2.unicodeScalars.map {$0.value}.reduce(0, +) % 2
//}

//
//Given an array of equal-length strings, you'd like to know if it's possible to rearrange the order of the elements in such a way that each consecutive pair of strings differ by exactly one character. Return true if it's possible, and false if not.



//var thty = ttt.map {$0.unicodeScalars.map{$0.value}.reduce(0, +)}.sorted()
//print(thty)
//
//func stringsRearrangement(inputArray: [String]) -> Bool {
//    let newArr = inputArray.map {$0.unicodeScalars.map{$0.value}.reduce(0, +)}.sorted()
//    for i in 0 ... newArr.count - 2 {
//        if newArr[i + 1] - newArr[i] > 1 {
//            return false
//        }
//    }
//    return true
//}

//Given a string, find the number of different characters in it.

//func differentSymbolsNaive(s: String) -> Int {
//    return Set(s.map{$0}).count
//}

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

///

// это решение ище макс первое число
//func longestDigitsPrefix(inputString: String) -> String {
//
//var answerStr = ""
//
//for element in inputString {
//    if element == " " {
//        return answerStr
//    } else  if Int(String(element)) != nil {
//        answerStr.append(element)
//    } else if  Int(String(element)) == nil {
//        break
//    }
//}
//return answerStr
//}
//// это решение ищет макс число в строке
//
//func longesdtDigitsPrefix(inputString: String) -> String {
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
