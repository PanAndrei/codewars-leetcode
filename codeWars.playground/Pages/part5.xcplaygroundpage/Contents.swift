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


//A string is said to be beautiful if each letter in the string appears at most as many times as the previous letter in the alphabet within the string; ie: b occurs no more times than a; c occurs no more times than b; etc. Note that letter a has no previous letter.
//
//Given a string, check whether it is beautiful.

//func isBeautifulString(inputString: String) -> Bool {
//    var numArr = [Int]()
//    var tempArr = [Character]()
//
//    guard inputString.contains("a") else {
//        return false
//    }
//
//    let arrSorted = inputString.map { $0 }.sorted()
//
//    arrSorted.forEach {
//        let element = $0
//
//        guard tempArr.contains(element) == false else {
//            return
//        }
//
//        numArr.append(arrSorted.filter {$0 == element}.count )
//        tempArr.append(element)
//    }
//
//    return numArr == numArr.sorted().reversed()
//}
//
//isBeautifulString(inputString: "bbbaacdafe")
//

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

//var hf = "abcdc"

// что за бред со строками

//hf.append("\(hf.prefix(2).reversed())")
//print(hf.map({ $0 }))
//var tt = hf.map({ $0 }) == hf.map { $0 }.reversed()
//tt

//var j = 2
//var rf = hf.map({ $0 })
//print(hf)
//print(rf == rf.reversed())
//
//var ff = rf + rf.prefix(j).reversed()
//print(ff)

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
//
//buildPalindrome(st: "abcdcba")


//Given an array of the numbers of votes given to each of the candidates so far, and an integer k equal to the number of voters who haven't cast their vote yet, find the number of candidates who still have a chance to win the election.
//
//The winner of the election must secure strictly more votes than any other candidate. If two or more candidates receive the same (maximum) number of votes, assume there is no winner at all.

//var tt = [4,5,6]
//var rr = tt.removeLast()
//tt
//
//func electionsWinners(votes: [Int], k: Int) -> Int {
//    var newArr = votes.sorted()
//    let maxMark = newArr.removeLast()
//    var answer = 1
//
//    for element in newArr {
//        if element == maxMark && k == 0 {
//            return 0
//        } else  if (element + k) > maxMark {
//            answer += 1
//        }
//    }
//    return answer
//}


//func solution(votes: [Int], k: Int) -> Int {
//    let bestCandidate = votes.max() ?? 0
//    let candidates = votes.filter{$0 == bestCandidate}.count
//    if k == 0 &&  candidates == 1 { return 1}
//    return votes.map{$0 + k}.filter{$0 > bestCandidate}.count
//}


//A media access control address (MAC address) is a unique identifier assigned to network interfaces for communications on the physical network segment.
//
//The standard (IEEE 802) format for printing MAC-48 addresses in human-friendly form is six groups of two hexadecimal digits (0 to 9 or A to F), separated by hyphens (e.g. 01-23-45-67-89-AB).
//
//Your task is to check by given string inputString whether it corresponds to MAC-48 address or not.
//var inputdString = "00-1B-63-84-45-E6"
//var newArr = inputdString.components(separatedBy: "-")
//var jjg = newArr.flatMap { $0 }
//jjg
//
//("0" ... "9").contains("4")
//
//func isMAC48Address(inputString: String) -> Bool {
//    let newArr = inputString.components(separatedBy: "-")
//    guard newArr.count == 6 else {
//        return false
//    }
//
//    for element in newArr {
//        if element.count != 2 {
//            return false
//        }
//    }
//
//    let flatArr = newArr.flatMap { $0 }
//
//    for element2 in flatArr {
//        if !("0" ... "9").contains(element2) && !("A" ... "F").contains(element2) {
//            return false
//        }
//    }
//    return true
//}
//
//isMAC48Address(inputString: "FF-FF-FF-FF-FF-FF")

// поленился в кодировку лезть

//func solution(inputString: String) -> Bool {
//    let splitByCharcter = inputString.components(separatedBy: "-")
//    if splitByCharcter.count != 6 { return false }
//    return splitByCharcter.map{$0.utf8.map{Int($0)}}.flatMap{$0}.filter{48..<71 ~= $0}.count == 12
//}


//My friend John and I are members of the "Fat to Fit Club (FFC)". John is worried because each month a list with the weights of members is published and each month he is the last on the list which means he is the heaviest.
//
//I am the one who establishes the list so I told him: "Don't worry any more, I will modify the order of the list". It was decided to attribute a "weight" to numbers. The weight of a number will be from now on the sum of its digits.
//
//For example 99 will have "weight" 18, 100 will have "weight" 1 so in the list 100 will come before 99.
//
//Given a string with the weights of FFC members in normal order can you give this string ordered by "weights" of these numbers?


//let sdf = "2000 10003 1234000 44444444 9999 11 11 22 123"
//var arrayString = sdf.components(separatedBy: " ")
//var arrayIntStart = arrayString.map { Int($0)! }
//var arrayStringFinal = arrayString
//var arrayIntFinal : [Int] = []
//
//arrayStringFinal.forEach {
//    let element = $0
//    var value = 0
//    for part in element {
//        value += Int(String(part))!
//    }
//    arrayIntFinal.append(value)
//    value = 0
//}
//
//
//
//
//print(sdf)
//print(arrayString)
//print(arrayIntStart)
//print(arrayIntFinal)
//
//for _ in 1 ... 10 {
//    for i in 0 ... arrayIntFinal.count - 2 {
//        var tmpA = 0
//        var tmpB = 0
//        if arrayIntFinal[i] > arrayIntFinal[i + 1] {
//            tmpA = arrayIntFinal[i]
//            arrayIntFinal[i] = arrayIntFinal[i + 1]
//            arrayIntFinal[i + 1] = tmpA
//
//            tmpB = arrayIntStart[i]
//            arrayIntStart[i] = arrayIntStart[i + 1]
//            arrayIntStart[i + 1] = tmpB
//        }
//        tmpA = 0
//        tmpB = 0
//    }
//}
//
//print(arrayIntStart)
//print(arrayIntFinal)
//
//
//for _ in 1 ... 10 {
//    for i in 0 ... arrayIntFinal.count - 2 {
//        var tmpA = 0
//        var tmpB = 0
//        if arrayIntFinal[i] > arrayIntFinal[i + 1] {
//            tmpA = arrayIntFinal[i]
//            arrayIntFinal[i] = arrayIntFinal[i + 1]
//            arrayIntFinal[i + 1] = tmpA
//
//            tmpB = arrayIntStart[i]
//            arrayIntStart[i] = arrayIntStart[i + 1]
//            arrayIntStart[i + 1] = tmpB
//        }
//        tmpA = 0
//        tmpB = 0
//    }
//}



//func orderWeight(_ s: String) -> String {
//    var arrayStart = s.components(separatedBy: " ")
//    var arrayIntStart = arrayStart.map { Int($0)! }
//    var arrayStringFinal = arrayStart
//    var arrayIntFinal : [Int] = []
//    var stringFinal = ""
//
//    arrayStringFinal.forEach {
//        let element = $0
//        var value = 0
//        for part in element {
//            value += Int(String(part))!
//        }
//        arrayIntFinal.append(value)
//        value = 0
//    }
//
//    for _ in 1 ... 10 {
//        for i in 0 ... arrayIntFinal.count - 2 {
//            var tmpA = 0
//            var tmpB = 0
//            if arrayIntFinal[i] > arrayIntFinal[i + 1] {
//                tmpA = arrayIntFinal[i]
//                arrayIntFinal[i] = arrayIntFinal[i + 1]
//                arrayIntFinal[i + 1] = tmpA
//
//                tmpB = arrayIntStart[i]
//                arrayIntStart[i] = arrayIntStart[i + 1]
//                arrayIntStart[i + 1] = tmpB
//            }
//            tmpA = 0
//            tmpB = 0
//        }
//    }
//
//    for element in arrayIntStart {
//        stringFinal += (String(element) + " ")
//    }
//    stringFinal.removeLast()
//    return (stringFinal)
//}
//
//print(orderWeight("88 33 22 55 11 44"))
