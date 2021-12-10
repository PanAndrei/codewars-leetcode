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

//An email address such as "John.Smith@example.com" is made up of a local part ("John.Smith"), an "@" symbol, then a domain part ("example.com").
//
//The domain name part of an email address may only consist of letters, digits, hyphens and dots. The local part, however, also allows a lot of different special characters. Here you can look at several examples of correct and incorrect email addresses.
//
//Given a valid email address, find its domain part.

//func findEmailDomain(address: String) -> String {
//    var separated = address.components(separatedBy: "@")
//    return separated.removeLast()
//}

//Given a string, find the shortest possible string which can be achieved by adding characters to the end of initial string to make it a palindrome.

//func buildPalindrome(st: String) -> String {
//    var answerArr = st.map({ $0 })
//
//    for i in 0 ... answerArr.count {
//        let tempArr = answerArr + answerArr.prefix(i).reversed()
//        if tempArr.map({ $0 }) == tempArr.map ({ $0 }).reversed() {
//            answerArr = tempArr
//            break
//        }
//    }
//        return String(answerArr)
//}
 
// part 9 - 400
//func solution(systemNames: [String], stepNumbers: [Int]) -> Bool {
//    var numb = [[Int]]()
//    var checked = [String]()
//
//    for i in 0 ..< systemNames.count {
//        if !checked.contains(systemNames[i]) {
//            numb.append([0])
//            checked.append(systemNames[i])
//        }
//        let element = stepNumbers[i]
//        let position = checked.firstIndex(of: systemNames[i])!
//        if numb[position][0] < element {
//            numb[position][0] = element
//        } else {
//            print(numb)
//            return false
//        }
//    }
//    print(numb)
//    return true
//}
