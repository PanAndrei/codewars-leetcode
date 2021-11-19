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
