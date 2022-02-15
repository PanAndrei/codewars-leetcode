//: [Previous](@previous)

import Foundation

//A noob programmer was given two simple tasks: sum and sort the elements of the given array
//a = [a1, a2, ..., an]. He started with summing and did it easily, but decided to store the sum he found in some random position of the original array which was a bad idea. Now he needs to cope with the second task, sorting the original array a, and it's giving him trouble since he modified it.
//
//Given the array shuffled, consisting of elements a1, a2, ..., an, a1 + a2 + ... + an in random order, return the sorted array of original elements a1, a2, ..., an.

//func solution(shuffled: [Int]) -> [Int] {
//
//    for i in 0 ..< shuffled.count {
//        var arr = shuffled
//        arr.remove(at: i)
//        let sum = arr.reduce(0, +)
//        if sum == shuffled[i] {
//            return arr.sorted()
//        }
//    }
//    return [Int]()
//}

// без перебора
//func solution(shuffled: [Int]) -> [Int] {
//    var result = shuffled
//    let sum = result.reduce(0, +)
//    guard let index = result.firstIndex(of: sum / 2) else { return [] }
//    result.remove(at: index)
//    return result.sorted()
//}

//Some people are standing in a row in a park. There are trees between them which cannot be moved. Your task is to rearrange the people by their heights in a non-descending order without moving the trees. People can be very tall!

//func solution(a: [Int]) -> [Int] {
//    var answer = a
//
//    for i in 0 ..< answer.count {
//        if answer[i] == -1 {
//            continue
//        }
//        for j in (i + 1) ..< answer.count {
//            if answer[j] == -1 {
//                continue
//            }
//
//            let smallest = answer[i]
//            if answer[j] < smallest {
//                answer[i] = answer[j]
//                answer[j] = smallest
//            }
//        }
//    }
//print(answer)
//    return answer
//}
//
//solution(a: [200, -1, 190, 170, -1, -1, 160, 180])

// разобрать индексы деревьев
//func solution(a: [Int]) -> [Int] {
//    let trees = a.enumerated().filter { $0.element == -1 }
//    var sorted = a.filter { $0 != -1 }.sorted()
//    for tree in trees {
//        sorted.insert(-1, at: tree.offset)
//    }
//    return sorted
//}

//Given an array of strings, sort them in the order of increasing lengths. If two strings have the same length, their relative order must be the same as in the initial array.

//let input = ["abc",
//             "",
//             "aaa",
//             "a",
//             "zz"]
//
//// отлично работает но двигает местами элементы одинаковой длины
//func solution(inputArray: [String]) -> [String] {
//    var answer = inputArray
//
//    for i in 0 ..< answer.count {
//        for j in (i + 1) ..< answer.count {
//            if answer[i].count > answer[j].count {
//                answer.swapAt(i, j)
//            }
//        }
//    }
//
//    return answer
//}
//
//solution(inputArray: input)
//
//// answer
//func solution(inputArray: [String]) -> [String] {
//    return inputArray.sorted(by: {$0.count < $1.count})
//}

//You are given n rectangular boxes, the ith box has the length lengthi, the width widthi and the height heighti. Your task is to check if it is possible to pack all boxes into one so that inside each box there is no more than one another box (which, in turn, can contain at most one another box, and so on). More formally, your task is to check whether there is such sequence of n different numbers pi (1 ≤ pi ≤ n) that for each 1 ≤ i < n the box number pi can be put into the box number pi+1.
//A box can be put into another box if all sides of the first one are less than the respective ones of the second one. You can rotate each box as you wish, i.e. you can swap its length, width and height if necessary.


//let a = [1, 2, 3], b = [4, 3, 2]
//
//func checkBox(boxA: [Int], boxB: [Int]) -> Bool {
//    let a = boxA.sorted()
//    let b = boxB.sorted()
//
//    for i in 0 ..< a.count {
//        if a[i] >= b[i] {
//            return false
//        }
//    }
//    return true
//}
//
//checkBox(boxA: a, boxB: b)
//
//// работает на 12/ 13 но не учитывает что две маленькие в одну большую не влезут
//func solution(length: [Int], width: [Int], height: [Int]) -> Bool {
//    var multa = 0
//    var ok = false
//
//    for i in 0 ..< length.count {
//        let boxAA = [length[i], width[i], height[i]]
//        for j in 0 ..< length.count {
//            let boxBB = [length[j], width[j], height[j]]
//            if checkBox(boxA: boxAA, boxB: boxBB) {
//                ok = true
//                continue
//            }
//        }
//        if !ok {
//            multa += 1
//        }
//        ok = false
//    }
//
//    return multa > 1 ? false : true
//}
//
//let length = [3, 1, 2], width = [3, 1, 2], height = [3, 2, 1]
//
//solution(length: length, width: width, height: height)
//
//// а все было легко
//func solution(length: [Int], width: [Int], height: [Int]) -> Bool {
//    var arr = [[Int]]()
//
//    for i in 0..<length.count {
//        arr.append([length[i], width[i], height[i]].sorted())
//    }
//
//    arr = arr.sorted(by: { $0[0] < $1[0] })
//
//    for i in 0..<arr.count-1 {
//        if arr[i][0] >= arr[i+1][0] || arr[i][1] >= arr[i+1][1] || arr[i][2] >= arr[i+1][2] {
//            return false
//        }
//    }
//
//    return true
//}

//You are given an array of integers a. A range sum query is defined by a pair of non-negative integers l and r (l <= r). The output to a range sum query on the given array a is the sum of all the elements of a that have indices from l to r, inclusive.
//
//You have the array a and a list of range sum queries q. Find an algorithm that can rearrange the array a in such a way that the total sum of all of the query outputs is maximized, and return this total sum.
//
//let a = [4, 2, 1, 6, 5, 7, 2, 4], q = [[1,6],
//                                       [2,4],
//                                       [3,6],
//                                       [0,7],
//                                       [3,6],
//                                       [4,4],
//                                       [5,6],
//                                       [5,6],
//                                       [0,1],
//                                       [3,4]]

//let a = [2, 1, 2], q = [[0,1]]
//
//// perfectly well!!!!
//func findMax(with q: [[Int]]) -> [Int] {
//    var arrayInt = [Int]()
//    var answer = [Int]()
//
//    for element in q {
//        let range = Array(element[0] ... element[1])
//        arrayInt += range
//    }
//
//    let rangedInt = arrayInt.sorted().sorted { a, b in
//        arrayInt.filter{ $0 == a }.count > arrayInt.filter{ $0 == b }.count
//    }
//
//    for element in rangedInt {
//        if answer.contains(element) {
//            continue
//        }
//        answer.append(element)
//    }
//
//    return answer
//}
//
//func findSum(with a: [Int], with q: [[Int]]) -> Int {
//    var answer = 0
//
//    for element in q {
//        let range = element[0] ... element[1]
//        answer += a[range].reduce(0, +)
//    }
//
//    return answer
//}
//
//findMax(with: q)
//findSum(with: a, with: q)
//
//func solution(a: [Int], q: [[Int]]) -> Int {
//    let a = a.sorted(by: >)
//    var newA = Array(repeating: 0, count: a.count)
//    var newRange = findMax(with: q)
//
//    for i in 0 ..< newRange.count {
//        newA[newRange[i]] = a[i]
//    }
//
//    print(newA)
//
//    return findSum(with: newA, with: q)
//}
//
//solution(a: a, q: q)

//Given a rectangular matrix of integers, check if it is possible to rearrange its rows in such a way that all its columns become strictly increasing sequences (read from top to bottom).

//let matrix = [[1,3,1],
//              [0,2,0],
//              [1,7,2]]
//// идеально
//func checkColumns(matrix: [[Int]]) -> Bool {
//    for j in 0 ..< matrix[0].count {
//        for i in 0 ..< matrix.count - 1 {
//            if matrix[i][j] <= matrix[i + 1][j] {
//                return false
//            }
//        }
//    }
//    return true
//}
//
//func rearrengeColumn (matrix: [[Int]], column: Int) -> [[Int]] {
//    var answer = matrix
//
//    for i in 0 ..< answer.count {
//        for j in (i + 1) ..< answer.count {
//            if answer[i][column] < answer[j][column] {
//                answer.swapAt(i, j)
//            }
//        }
//    }
//
//    return answer
//}
//
//func solution(matrix: [[Int]]) -> Bool {
//    var answer = matrix
//
//    for i in 0 ..< matrix[0].count {
//        answer = rearrengeColumn(matrix: answer, column: i)
//
//        if checkColumns(matrix: answer) {
//            return true
//        }
//    }
//    return false
//}
//
//solution(matrix: matrix)
//
//// чужое решение не учитывает другие колонны вообще
//func solution(matrix: [[Int]]) -> Bool {
//    let m = matrix.sorted(by: { $0[0] < $1[0] })
//    for c in 0..<m[0].count {
//        for r in 1..<m.count where m[r][c] <= m[r - 1][c] {
//            return false
//        }
//    }
//    return true
//}

//Given an array of integers, sort its elements by the difference of their largest and smallest digits. In the case of a tie, that with the larger index in the array should come first.

//let a = [152, 23, 7, 887, 243]
//
//// работает но не тогда когда есть одинаковые числа на разных местах
//func getDifference(num: Int) -> Int {
//    var arrayNum = String(num).map { Int(String($0))! }
//
//    if arrayNum.count == 1 {
//        return 0
//    } else {
//        return arrayNum.max()! - arrayNum.min()!
//    }
//}
//
//getDifference(num: 5)
//
//func solution(a: [Int]) -> [Int] {
//    var answer = a
//
//    for i in 0 ..< answer.count {
//        for j in (i + 1) ..< answer.count {
//            if getDifference(num: answer[i]) > getDifference(num: answer[j]) {
//                answer.swapAt(i, j)
//            }
//        }
//    }
//
//    for i in 0 ..< answer.count {
//        for j in (i + 1) ..< answer.count {
//           if getDifference(num: answer[i]) == getDifference(num: answer[j]) &&
//            a.lastIndex(of: answer[i])! < a.lastIndex(of: answer[j])! {
//                answer.swapAt(i, j)
//            }
//        }
//    }
//
//    return answer
//}
//
//solution(a: a)
//
//// интересное решение со структурой
//
//func solution(a: [Int]) -> [Int] {
//
//    var digits = [Digit]()
//
//    for num in a {
//        let arr = Array(String(num)).sorted(by: {$0 > $1})
//        let biggest = Int(String(arr[0]))!
//        let smallest = Int(String(arr[arr.count-1]))!
//
//        digits.append(Digit(n: num, bMinusS: biggest - smallest))
//    }
//
//
//    return digits.sorted(by: {if $0.bMinusS != $1.bMinusS {return $0.bMinusS < $1.bMinusS} else {return true} }).map({$0.n})
//
//}
//
//
//struct Digit {
//    var n : Int
//    var bMinusS : Int
//}

//Let's call product(x) the product of x's digits. Given an array of integers a, calculate product(x) for each x in a, and return the number of distinct results you get.

//func findProduct(num: Int) -> Int {
//    return String(num).map { Int(String($0))! }.reduce(1, *)
//}
//
//func solution(a: [Int]) -> Int {
//    var setNum: Set<Int> = []
//
//    for element in a {
//        setNum.insert(findProduct(num: element))
//    }
//
//    return setNum.count
//}
//
//solution(a: [2, 8, 121, 42, 222, 23])

//Given the positions of a white bishop and a black pawn on the standard chess board, determine whether the bishop can capture the pawn in one move.
//
//The bishop has no restrictions in distance for each move, but is limited to diagonal movement. Check out the example below to see how it can move:

//let bishop = "a1", pawn = "c3"
//
//func solution(bishop: String, pawn: String) -> Bool {
//    let bishopArr = bishop.map { String($0) }
//    let pawnArr = pawn.map { String($0) }
//
//    if abs(Int(bishopArr[1])! - Int(pawnArr[1])!) ==
//       abs(Int(Character(bishopArr[0]).asciiValue!) - Int(Character(pawnArr[0]).asciiValue!)) {
//        return true
//    } else {
//        return false
//    }
//}
//
//solution(bishop: bishop, pawn: pawn)
//
//// simplier
//func solution(bishop: String, pawn: String) -> Bool {
//    return abs(Int(bishop.utf8.first!) - Int(pawn.utf8.first!)) == abs(Int(bishop.utf8.last!) - Int(pawn.utf8.last!))
//}

//Given a position of a knight on the standard chessboard, find the number of different moves the knight can perform.
//
//The knight can move to a square that is two squares horizontally and one square vertically, or two squares vertically and one square horizontally away from it. The complete move therefore looks like the letter L. Check out the image below to see all valid moves for a knight piece that is placed on one of the central squares.

// perfect
//func solution(cell: String) -> Int {
//    var answer = 8
//    let position = [cell.utf8.first!, cell.utf8.last!]
//
//    for i in -2 ... 2 {
//        if i == 0 {
//            continue
//        }
//        for j in -2 ... 2 {
//            if j == 0 || abs(i) + abs(j) != 3 {
//                continue
//            }
//            var newPosition = [Int(position[0]) + i, Int(position[1]) + j]
//            if !(97 ... 104).contains(newPosition[0]) || !(49 ... 56).contains(newPosition[1]) {
//                answer -= 1
//            }
//        }
//    }
//
//    return answer
//}
//
//solution(cell: "c2")
