//: [Previous](@previous)

import Foundation

/// similar arrays////////
// оптяь очень долго
//func areSimilar(a: [Int], b: [Int]) -> Bool {
//    var newA = a
//    guard a != b else {
//        return true
//    }
//
//    for i in 0 ... (newA.count - 2) {
//        for j in 1 ... (newA.count - i - 1) {
//            let tmp = newA[i]
//            newA[i] = newA[i + j]
//            newA[i + j] = tmp
//            if newA == b {
//                return true
//            } else {
//                newA = a
//            }
//        }
//     }
//    return false
//}
//
//
//let a =  [3, 1, 2, 3, 4, 8]
//let b =  [3, 2, 1, 3, 4, 8]
//
//areSimilar(a: a, b: b)
//
//var aa = [4, 6, 3]
//var bb = [3, 4, 6]
//
//areSimilar(a: aa, b: bb)

// а это гениально
//сложность алгоритма в разы меньше
//
//func areSввimilar(a: [Int], b: [Int]) -> Bool {
//    var similar: [Int] = []
//
//    for i in 0..<a.count {
//        if a[i] != b[i] {
//            similar.append(i)
//        }
//    }
//
//    if similar.count == 0 {
//        return true
//    } else if similar.count != 2 {
//        return false
//    }
//
//    let c = similar[0]
//    let d = similar[1]
//
//    return a[c] == b[d] && a[d] == b[c] ? true : false
//}
//
//let a =  [3, 1, 2, 3, 4, 8]
//let b =  [3, 2, 1, 3, 4, 8]
//
//areSввimilar(a: a, b: b)
//
//var aa = [4, 6, 3]
//var bb = [3, 4, 6]
//
//areSввimilar(a: aa, b: bb)


/// matrix and gosts ////

//var matrix = [[0, 1, 1, 2],
//              [0, 5, 0, 0],
//              [2, 0, 3, 3]]
//
//
//func matrixElementsSum(matrix: [[Int]]) -> Int {
//    var matrixnew = matrix
//    max: for i in 0 ... matrixnew.count - 1 {
//          for j in 0 ... matrixnew[i].count - 1 {
//            if matrixnew[i][j] == 0 {
//                for x in i ... matrixnew.count - 1 {
//                    matrixnew[x][j] = 0
//                }
//            }
//        }
//    }
//    let matrixFlat = matrixnew.flatMap{$0}
//    return matrixFlat.reduce(0, +)
//}
//
//matrixElementsSum(matrix: matrix)


// совсем по другому цикл/ рассмотреть!

//func matrixEleввmentsSum(matrix: [[Int]]) -> Int {
// var sum = 0
//    for column in 0..<matrix[0].count {
//        for row in 0..<matrix.count {
//            if matrix[row][column] != 0 {
//                sum += matrix[row][column]
//            } else {
//                break
//            }
//        }
//    }
//    return sum
//}



/// remove one element ///

//func almostIncreasingSequence(sequence: [Int]) -> Bool {
//    guard sequence.count > 2 else {
//        return true
//    }
//    if (sequence.count - Set(sequence).count) > 1 {
//        return false
//    }
//
//
//    return true
//}
//
//almostIncreasingSequence(sequence: [1, 1, 2, 3, 4, 4])

//2 ≤ sequence.length ≤ 105,
//-105 ≤ sequence[i] ≤ 105

//var arrc = [Int]()
//for _ in 1 ... 10_000 {
//arrc.append(Int.random(in: -100_000 ... 100_000))
//}
//let arccLet = arrc
//almostIncreasingSequence(sequence: arccLet)

/// слишком долго
//func almostIncreasingSequence(sequence: [Int]) -> Bool {
//    guard sequence.count > 2 else {
//        return true
//    }
//    if (sequence.count - Set(sequence).count) > 1 {
//        return false
//    }
//    let newSeq = sequence
//    for i in 0 ... newSeq.count - 1 {
//        var tempArr = newSeq
//        tempArr.remove(at: i)
//        if tempArr.sorted() == tempArr  {
//            return true
//        }
//        tempArr = newSeq
//    }
//    return false
//}

// над этим подумать
//func almoffstIncreasingSequence(sequence: [Int]) -> Bool {
//var strikes = 0, firstMax = -100000, secondMax = -100000
//
//for i in 0...sequence.count - 1 {
//    if sequence[i] > firstMax {
//        secondMax = firstMax
//        firstMax = sequence[i]
//    } else if sequence[i] > secondMax {
//        firstMax = sequence[i];
//        strikes += 1
//    } else {
//        strikes += 1
//    }
//}
//
//return strikes < 2
//}
//
//almoffstIncreasingSequence(sequence: arccLet)
