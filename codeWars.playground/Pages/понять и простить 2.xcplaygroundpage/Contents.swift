//: [Previous](@previous)

import Foundation

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
