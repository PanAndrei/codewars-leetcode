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

//check if the given string is a correct time representation of the 24-hour clock.

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

//func jumpinegNumber(_ number: Int) -> String {
//  let numbers = String(number).compactMap { c in c.wholeNumberValue };
//  for i in 1..<numbers.count {
//      if abs(numbers[i - 1] - numbers[i]) != 1 {
//          return "Not!!";
//      }
//  }
//  return "Jumping!!";
//}


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

//You are given an array of desired filenames in the order of their creation. Since two files cannot have equal names, the one which comes later will have an addition to its name in a form of (k), where k is the smallest positive integer such that the obtained name is not used yet.
//
//Return an array of names that will be given to the files.
//
//var names = ["doc", "doc", "image", "doc(1)", "doc"]
//var answerNames =  ["doc", "doc(1)", "image", "doc(1)(1)", "doc(2)"]
//var names2 = ["a(1)",
//              "a(6)",
//              "a",
//              "a",
//              "a",
//              "a",
//              "a",
//              "a",
//              "a",
//              "a",
//              "a",
//              "a"]
/// работае в ограниченных случаях
//func solution2(names: [String]) -> [String] {
//    let namesArr = names
//    var tempNameArr = [String]()
//
//    for j in 0 ..< namesArr.count {
//        var element = namesArr[j]
//        var i = 0
//
//        while tempNameArr.contains(element) {
//            i += 1
//            element = namesArr[j] + "(\(i))"
//
//        }
//        tempNameArr.append(element)
//        i = 1
//    }
//    print(names)
//    print(tempNameArr)
//    return tempNameArr
//}

//solution2(names: names)
//solution2(names: names2)


/// как перевести юнискаляр в стринг?
//func solution(names: [String]) -> [String] {
//    let namesArr = names.map { $0.unicodeScalars.map { $0.value } }
//    var answerArr = [[UInt32]]()
//    answerArr = Array(repeating: [], count: 1)
//    var answerStr: Array <String> = [""]
//
//    namesArr.forEach {
//        var element = $0
//        var i: UInt32 = 1
//
//        while answerArr.contains(element) {
//            if element[(element.count - 1)] == 41 {
//                element[(element.count - 2)] += i
//                i += 1
//            } else {
//                element.append(40)
//                element.append(48 + i)
//                element.append(41)
//                i += 1
//            }
//        }
//        answerArr.append(element)
//        i = 1
//    }
//
//    print(names)
//    print(namesArr)
//    print(answerArr.filter { !$0.isEmpty })
//    var tempAnswer = answerArr.filter { !$0.isEmpty }
//
//    answerStr = tempAnswer.map { String($0.map { Character($0) } ) }
//
//
//    return ["d"]
//}
//
//solution(names: names)

/// а такое же решение
/// не понимаю чем от моего отличается
//func solution(names: [String]) -> [String] {
//    var result = [String]()
//    for i in 0..<names.count {
//        var count = 0
//        var name = names[i]
//        print(name)
//        while result.contains(name) {
//            count += 1
//            name = names[i] + "(\(count))"
//        }
//        print(name)
//        result.append(name)
//    }
//    print(names)
//    print(result)
//    return result
//}

//solution(names: names)
//solution(names: names2)

//
//square matrix with a size N × N containing integers from 1 to N * N in a spiral order, starting from top-left and in clockwise direction.

// почти решил
//func solution(n: Int) -> [[Int]] {
//    let maxnumber = n * n
//    var arrRow : Array<Int> = Array(1 ... n)
//    var matrix = Array(repeating: arrRow, count: n)
////    print(matrix)
//    var row = n
//    //  row = количество элементов в подстроке
//    var rout = 1
//    // проверка на вверх низ // низ вверх
//    var step = 1
//    // step = шаг итерации
//
//    while row > 1 {
//        if rout % 2 != 0 {
//            for i in 0 ..< row {
//                matrix[i][row - rout] = (n * step) + i
//            }
//            step += 1
//            for i in 0 ..< row {
//               matrix[row - rout][i] = (n * step  + n - 2) - i
//            }
//            step += 1
//            rout += 1
//            row  -= 1
//
//        } else {
//            for i in 1 ..< row {
//                matrix[i][0] = (n * step + n - 3) - i
//        }
//            step += 1
//            for i in 0 ..< row {
//                matrix[1][i] = (n * step  - 3) + i
//            }
//            row -= 1
//    }
//
//
//    }
//
//    print(matrix[0])
//    print(matrix[1])
//    print(matrix[2])
//    print(matrix[3])
//    print(matrix[4])
////    print(matrix[5])
//    return matrix
//}
//
//solution(n: 5)

//func solвution2(n: Int) -> [[Int]] {
//    var result = [[Int]](repeating: [Int](repeating: 0, count: n), count: n)
//    var counter = 1
//    var i = 0
//    while counter <= n * n {
//        // Left to right
//        var j = i
//        while j < n - i {
//            result[i][j] = counter
//            counter += 1
//            j += 1
//        }
//        // Top to bottom
//        j = i + 1
//        while j < n - i {
//            result[j][n - i - 1] = counter
//            counter += 1
//            j += 1
//        }
//        // Right to left
//        j = n - i - 2;
//        while (j > i) {
//            result[n - i - 1][j] = counter
//            j -= 1
//            counter += 1
//        }
//        // Bottom to top
//        j = n - i - 1;
//        while (j > i) {
//            result[j][i] = counter
//            j -= 1
//            counter += 1
//        }
//        i += 1
//    }
//    return result
//}

