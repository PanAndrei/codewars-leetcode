//: [Previous](@previous)

import Foundation
import UIKit

//Determine if the given character is a digit or not.

//func solution(symbol: Character) -> Bool {
//    if Int(String(symbol)) == nil {
//        return false
//    } else {
//        return true
//    }
//}
//
//func solution(symbol: Character) -> Bool {
//    return symbol >= "0" && symbol <= "9"
//}


//Given a string, return its encoding defined as follows:
//
//First, the string is divided into the least possible number of disjoint substrings consisting of identical characters
//for example, "aabbbc" is divided into ["aa", "bbb", "c"]
//Next, each substring with length greater than one is replaced with a concatenation of its length and the repeating character
//for example, substring "bbb" is replaced by "3b"
//Finally, all the new strings are concatenated together in the same order and a new string is returned.

//let s = "aabbba "
//
//
//var sMap = s.map { String($0) }
//var arrayString : Array <String> = ["", "", "", "", ""]
//var j = 0
//for i in 0 ... sMap.count - 2 {
//    arrayString[j] += sMap[i]
//    if sMap[i + 1] != sMap[i] {
//        j += 1
//    }
//}
//
//arrayString
//var newArr : Array <String> = ["", "", "", "", ""]
//var h = 0
//
//for element in arrayString {
//    if element == "" {
//        break
//    }
//    else if element.count == 1 {
//        newArr[h] += element
//        h += 1
//    } else {
//        let elementCount = element.count
//        newArr[h] += String(elementCount) + element.suffix(1)
//        h += 1
//    }
//}
//
//newArr
//
//func solution(s: String) -> String {
//    var arrayString = Array(repeating: "", count: s.count)
//    var newSString = s + " "
//    var mapSString = newSString.map { String($0) }
//    var j = 0
//    var finalArr = arrayString
//    var x = 0
//    var stringFinal = ""
//
//    for i in 0 ... mapSString.count - 2 {
//        arrayString[j] += mapSString[i]
//        if mapSString[i + 1] != mapSString[i] {
//            j += 1
//        }
//    }
//
//    for element in arrayString {
//        if element == "" {
//            break
//        } else if element.count == 1 {
//            finalArr[x] += element
//            x += 1
//        } else {
//            finalArr[x] += String(element.count) + element.suffix(1)
//            x += 1
//        }
//    }
//
//    for element in finalArr {
//        stringFinal += element
//    }
//
//    return stringFinal
//}
//
//solution(s: "aabbbcccerffs")


//Given a position of a knight on the standard chessboard, find the number of different moves the knight can perform.
//
//The knight can move to a square that is two squares horizontally and one square vertically, or two squares vertically and one square horizontally away from it. The complete move therefore looks like the letter L. Check out the image below to see all valid moves for a knight piece that is placed on one of the central squares.
// не работает там где 3 хода
//func solution(cell: String) -> Int {
//  var possibleMoves = 8
//    var arrPositionUNicode = cell.map { Int($0.asciiValue!) }
//
//    if abs(arrPositionUNicode[0] - 97) < 1 || abs(arrPositionUNicode[0] - 104) < 1 {
//        possibleMoves -= 4
//    } else if abs(arrPositionUNicode[0] - 97) < 2 || abs(arrPositionUNicode[0] - 104) < 2 {
//        possibleMoves -= 2
//    }
//
//    if abs(arrPositionUNicode[1] - 49) < 1 || abs(arrPositionUNicode[1] - 56) < 1 {
//        possibleMoves -= 4
//    } else if abs(arrPositionUNicode[1] - 49) < 2 || abs(arrPositionUNicode[1] - 56) < 2 {
//        possibleMoves -= 2
//    }
//
//    if possibleMoves == 0 {
//        possibleMoves = 2
//    }
//
//    return possibleMoves
//}

// максимально тупое решение
//func solution(cell: String) -> Int {
//    let center = [100.5, 52.5]
//    var possibleMoves = 0
//    var arrPositionUNicode = cell.map { Double($0.asciiValue!) }
//
//    var lengh = sqrt(pow(arrPositionUNicode[0] - center[0], 2) + pow(arrPositionUNicode[1] - center[1], 2))
//
//    print(lengh)
//
//    switch lengh {
//    case 4.31... :
//        possibleMoves = 2
//    case 3.81... :
//        possibleMoves = 3
//    case 3.5... :
//        possibleMoves = 4
//    case 2.54... :
//        possibleMoves = 6
//    default:
//        possibleMoves = 8
//    }
//
//    return possibleMoves
//}
//
//solution(cell: "b4")

//func isOnBoard(_ knight: [Int], _ move: [Int] ) -> Bool {
//    let x = knight[0] + move[0]
//    let y = knight[1] + move[1]
//    return x >= 97 && x <= 104 && y >= 49 && y <= 56
//}
//
//func solution(cell: String) -> Int {
//    let knight = cell.utf8.map{Int($0)}
//    let validOffsets = [[1,2], [2, 1], [2, -1], [1, -2], [-1, -2], [-2, -1], [-2, 1], [-1, 2]]
//    return validOffsets.filter{isOnBoard(knight, $0)}.count
//
//}
//// гениально
//func solution(cell: String) -> Int {
//    var r = [2, 3, 4, 6, 8]
//    var arr = Array(cell)
//    var c1 = min(arr[0].ascii! - 97, 104 - arr[0].ascii!);
//    var c2 = min(arr[1].ascii! - 49, 56 - arr[1].ascii!);
//    var d1 = min(c1, 2);
//    var d2 = min(c2, 2);
//    return r[Int(d1 + d2)];
//}
//extension Character {
//    var isAscii: Bool {
//        return unicodeScalars.first?.isASCII == true
//    }
//    var ascii: UInt32? {
//        return isAscii ? unicodeScalars.first?.value : nil
//    }
//}
//
//solution(cell: "d4")

//Given some integer, find the maximal number you can obtain by deleting exactly one digit of the given number.

//func solution(n: Int) -> Int {
//    var arrInt = String(n).map { Int(String($0))! }
//    var answer = Int.min
//
//    for i in 0 ... arrInt.count - 1 {
//        var temp = arrInt
//        temp.remove(at: i)
//        var tempArr = temp.map { String($0) }
//        var tempAnsw = Int(tempArr.joined())!
//        if tempAnsw > answer {
//            answer = tempAnsw
//        }
//    }
//    return answer
//}
//
//solution(n: 152)
//
//

//Define a word as a sequence of consecutive English letters. Find the longest word from the given string.

// костыль и не красиво
//func solution(text: String) -> String {
//    let newArr = text.map { String($0) }.filter { ("A" ... "Z").contains($0) || ("a" ... "z").contains($0) || $0 == " "}
//    var answerStr = ""
//    var temStr = ""
//    for element in newArr {
//        if element == " " {
//            if temStr.count > answerStr.count {
//                answerStr = temStr
//            }
//            temStr = ""
//            continue
//        }
//        temStr += element
//    }
//    return answerStr.count > 0 ? answerStr : temStr
//}

//solution(text: "...h")
//
//
//func solution(text: String) -> String {
//    let newArr = text.components(separatedBy: " ").map { $0.map {String($0)}.filter { ("A" ... "Z").contains($0) || ("a" ... "z").contains($0)} }
//    var answer = ""
//    var temp = ""
//
//    for element in newArr {
//        temp = element.joined()
//        if temp.count > answer.count {
//            answer = temp
//            temp = ""
//        }
//    }
//    print(answer)
//   return answer
//}
//
//solutddion(text: "kehflwjbfkwjb... .m! ### hkbfkds bdfkjbd jsdbjksbd")
//
//func solutddion(text: String) -> String {
//    let s = String(text.unicodeScalars.map {!CharacterSet.letters.contains($0) ? " " : Character($0)})
//    print(s)
//    return s.components(separatedBy: " ").reduce(into: "", { (max, current) in
//        if current.count > max.count {
//            max = current
//        }
//    })
//}
// ого круто 
//var ff = "jbj3 ohovd// kojd2/2/v /w//e4//// /e/rfbvknbsb/ /33 vkefr./2"
//
//var tt = String(ff.unicodeScalars.map { CharacterSet.letters.contains($0) ? " " : Character($0) })
//
//print(ff)
//print(tt)


//Check if the given string is a correct time representation of the 24-hour clock.

//func solution(time: String) -> Bool {
//    let newArr = String(time.unicodeScalars.map { !CharacterSet.decimalDigits.contains($0) ? " " : Character($0)})
//    let answerArr = newArr.components(separatedBy: " ").map { Int($0)! }
//    return ((0 ... 23).contains(answerArr[0]) && (0 ... 59).contains(answerArr[1]) )
//}
//
//solution(time: "24:00")
//
//func solution(time: String) -> Bool {
//    let dateFormatter = DateFormatter()
//    dateFormatter.dateFormat = "HH:mm"
//    if let time = dateFormatter.date(from: time) {
//        return true
//    }
//    return false
//}

//CodeMaster has just returned from shopping. He scanned the check of the items he bought and gave the resulting string to Ratiorg to figure out the total number of purchased items. Since Ratiorg is a bot he is definitely going to automate it, so he needs a program that sums up all the numbers which appear in the given input.
//
//Help Ratiorg by writing a function that returns the sum of numbers that appear in the given


//func solution(inputString: String) -> Int {
//    let arrInt = String(inputString.unicodeScalars.map { !CharacterSet.decimalDigits.contains($0) ? " " : Character($0)})
//    let newArrInt = arrInt.components(separatedBy: " ").map { Int($0) ?? 0 }
//    return newArrInt.reduce(0, +)
//}
//
//solution(inputString: "2 apples, 12 oranges")
//
//func solutdion(inputString: String) -> Int {
//    return inputString
//                    .split { !$0.isWholeNumber }
//                    .map { Int($0)! }
//                    .reduce(0, +)
//}
//
//solutdion(inputString: " jkdkb 878 okslkv 97 97ohlk 767")
//
//var rr = " jkdkb 878 okslkv 97 97ohlk 767"
//print(rr)
//var ff = rr.split { !$0.isWholeNumber }
//print(ff)
//var gg = ff.map { Int($0)! }
//print(gg)
//var nn = gg.reduce(0, +)
//print(nn)


//Given a rectangular matrix containing only digits, calculate the number of different 2 × 2 squares in it.


//var matrix = [[2,5,3,4,3,1,3,2],
//              [4,5,4,1,2,4,1,3],
//              [1,1,2,1,4,1,1,5],
//              [1,3,4,2,3,4,2,4],
//              [1,5,5,2,1,3,1,1],
//              [1,2,3,3,5,1,2,4],
//              [3,1,4,4,4,1,5,5],
//              [5,1,3,3,1,5,3,5],
//              [5,4,4,3,5,4,4,4]]
//
//func solution(matrix: [[Int]]) -> Int {
//
//    guard matrix[0].count > 1 && matrix.count > 1 else {
//        return 0
//    }
//
//    var tempArr = [[Int]]()
//    tempArr = Array(repeating: [], count: ((matrix.count - 1) * (matrix[0].count - 1)))
//    var x = 0
//
//    for i in 0 ... matrix.count - 2 {
//        for j in 0 ... matrix[0].count - 2 {
//            tempArr[x].append(matrix[i][j])
//            tempArr[x].append(matrix[i][j + 1])
//            tempArr[x].append(matrix[i + 1][j])
//            tempArr[x].append(matrix[i + 1][j + 1])
//            x += 1
//        }
//    }
//
//    let set = Set(tempArr)
//
//    return set.count
//}
//
//
//solution(matrix: matrix)
//
//

//Given an integer product, find the smallest positive (i.e. greater than 0) integer the product of whose digits is equal to product. If there is no such integer, return -1 instead.
//
//func solution(product: Int) -> Int {
//
//    guard product != 0 else {
//        return 10
//    }
//    guard product != 1 else {
//        return 1
//    }
//
//    var string = ""
//    var temp = product
//
//    big:  for _ in 1 ... 10 {
//        for i in 2 ... 9 {
//            if temp % (11 - i) == 0 {
//                string.insert(Character("\(11 - i)"), at: string.startIndex)
//                temp /= (11 - i)
//                continue big
//            }
//        }
//    }
//
//    if string.count > 0 {
//        return Int(string) ?? 0
//    } else {
//        return -1
//    }
//}
//
//solution(product: 3)
//
//func soluddtion(product: Int) -> Int {
//    guard product > 0 else {return 10}
//    guard product > 1 else {return 1}
//    var val = product, current = 9
//    var digits = [Int]()
//    while val > 1 {
//        if val % current == 0 {
//            val = val / current
//            digits.append(current)
//            current = 10
//        }
//        current -= 1
//        guard current > 1 else {
//            return -1
//        }
//    }
//    return Int(digits.sorted().reduce("") { return "\($0)" + "\($1)"})!
//}
//
//soluddtion(product: 450)

