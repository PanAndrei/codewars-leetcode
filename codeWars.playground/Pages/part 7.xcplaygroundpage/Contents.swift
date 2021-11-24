//: [Previous](@previous)

import Foundation

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
//    namesArr.forEach {
//        var element = $0
//        var i = 1
//
//        while tempNameArr.contains(element) {
//
//            element += "(" + "\(i)" + ")"
//            i += 1
//        }
//        tempNameArr.append(element)
//        i = 1
//    }
//    print(names)
//    print(tempNameArr)
//    return tempNameArr
//}

//solution(names: names)
//solution(names: names2)


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
//        while result.contains(name) {
//            count += 1
//            name = names[i] + "(\(count))"
//        }
//        result.append(name)
//    }
//    print(names)
//    print(result)
//    return result
//}
//
//solution(names: names)


//You are taking part in an Escape Room challenge designed specifically for programmers. In your efforts to find a clue, you've found a binary code written on the wall behind a vase, and realized that it must be an encrypted message. After some thought, your first guess is that each consecutive 8 bits of the code stand for the character with the corresponding extended ASCII code.
//
//Assuming that your hunch is correct, decode the message.

//var code = "010010000110010101101100011011000110111100100001"
//// прикольно но можно лучше
//func solution2(code: String) -> String {
//    var str = Int(code, radix: 2)
//    var arrBinary: Array <Array <Int>> = []
//    var arrInt = code.map { Int(String($0))! }
//    print(str)
//    print(arrInt)
//
//    for i in 0 ..< (arrInt.count / 8) {
//        arrBinary.append( Array(arrInt[(0 + (8 * i)) ... (7 + (8 * i))] ))
//    }
//    print(arrBinary)
//
//    var answer = ""
//
//    for i in 0 ..< arrBinary.count {
//        var char = ""
//        for j in 0 ..< 8 {
//            char += String(arrBinary[i][j])
//        }
//        print(char)
//        answer += String(UnicodeScalar(UInt8(char, radix: 2)!))
//    }
//
//    return answer
//}
//
//solution2(code: code)
//
//solution(code: code)
//
//func solution(code: String) -> String {
//    var index = code.startIndex
//    var result = ""
//
//    for _ in 0 ..< (code.count / 8) {
//        let newIndex = code.index(index, offsetBy: 8)
//        let charBits = code[index ..< newIndex]
//        result += String(UnicodeScalar(UInt8(charBits, radix: 2)!))
//        index = newIndex
//    }
//    return result
//}


//Construct a square matrix with a size N × N containing integers from 1 to N * N in a spiral order, starting from top-left and in clockwise direction.

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
