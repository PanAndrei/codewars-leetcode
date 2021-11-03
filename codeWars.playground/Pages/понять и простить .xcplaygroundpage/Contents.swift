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



/// shame fotoes
///  почти позор

//func boxBlur(image: [[Int]]) -> [[Int]] {
//    var answerArr = Array(repeating: Array(repeating: 0, count: (image.count - 2)), count: (image.count - 2))
////    var imageFlat = image.flatMap({$0})
//    var tempInt
//
//    for string in 0 ... image.count - 3 {
//        let tempArr = image[(0 + string) ... (2 + string)]
//        for element in tempArr {
//            for row in (0 + string) ... (2 + string) {
//                tempInt += element[row]
//            }
//        }
//        
//    }
//
//    print(answerArr)
//    return answerArr
//}
//
//var test = [[1,2,3,4],
//            [1,2,3,4],
//            [1,2,3,4],
//            [1,2,3,4]]
//
//var ff = test[0...2]
//var rr = test[1][0...2]
//
//print(test)
//print(ff)
//print(rr)
//
//
//func bovvvxBlur(image: [[Int]]) -> [[Int]] {
//  var arr = Array<[Int]>(repeating: Array<Int>(repeating: 0, count: image[0].count - 2), count: image.count - 2)
//  
//  for i in 0..<arr.count {
//    for j in 0..<arr[i].count {
//      arr[i][j] = Int(Double(image[i][j] + image[i][j + 1] + image[i][j + 2] + image[i + 1][j] + image[i + 1][j + 1] + image[i + 1][j + 2] + image[i + 2][j] + image[i + 2][j + 1] + image[i + 2][j + 2]) / Double(9))
//    }
//  }
//  
//  return arr
//}
//
//func getArrayAverage(x: Int, y: Int, imageArray: [[Int]]) -> Int {
//    var average:Int = 0
//    for xArray in imageArray[y...(y+2)] {
//        average += xArray[x...(x+2)].reduce(0, +)
//    }
//    
//    return Int((Double(average)/9).rounded(.down))
//    
//}
//
//
//func boxBlnbur(image: [[Int]]) -> [[Int]] {
//    let sizeX = image[0].count - 2
//    let sizeY = image.count - 2
//    var result: [[Int]] = [[Int]]()
//    for yIndex in 0..<sizeY {
//        var xArray = [Int]()
//        for xIndex in 0..<sizeX {
//            let av = getArrayAverage(x:xIndex, y:yIndex, imageArray: image)
//            xArray.append(av)
//        }
//        result.append(xArray)
//    }
//    return result
//}


// minesweeper

//func minesweeper(matrix: [[Bool]]) -> [[Int]] {
//    var answerArr : [[Int]] = []
//    let matrixStringLength = matrix[0].count
//    let matrixColumnLenght = matrix.count
//    let tempStringArr = Array(repeating: 0, count: matrixStringLength)
//    answerArr = Array(repeating: tempStringArr, count: matrixColumnLenght)
//
//    for y in 0 ... matrixColumnLenght - 1 {
//        for x in 0 ... matrixStringLength - 1 {
//            if matrix[y][x] == false {
//                continue
//            } else {
//                for i in (y - 1) ... (y + 1) {
//                    if i < 0 || i > matrixColumnLenght - 1{
//                        continue
//                    }
//                    for j in (x - 1) ... (x + 1) {
//                        if j < 0 || j > matrixStringLength - 1{
//                            continue
//                        }
//                        answerArr[i][j] += 1
//                    }
//                }
//            }
//            answerArr[y][x] -= 1
//        }
//    }
//    print(answerArr)
//    return answerArr
//}
//
//var test = [[true, false, false, false],
//            [false, true, false, false],
//            [false, false, true, false],
//            [true, false, false, true]]
//
//print(test)
//minesweeper(matrix: test)


//func minebsweeper(matrix: [[Bool]]) -> [[Int]] {
//var arr = Array<[Int]>(repeating: Array<Int>(repeating:0, count: matrix[0].count), count: matrix.count)
//
//  for i in 0..<matrix.count {
//    for j in 0..<matrix[i].count {
//      for i1 in -1...1 {
//        for j1 in -1...1 {
//            // MARK: очень интересная штука ~=
//          if (i1 != 0 || j1 != 0) && 0..<matrix.count ~= (i + i1) && 0..<matrix[i].count ~= (j + j1) {
//            arr[i][j] += matrix[i + i1][j + j1] ? 1 : 0
//          }
//        }
//      }
//    }
//  }
//
//  return arr
//}



/// element to replace
// проверяй граничные случаи!

//func arrayReplace(inputArray: [Int], elemToReplace: Int, substitutionElem: Int) -> [Int] {
//
//    guard !inputArray.isEmpty else {
//        return []
//    }
//
//var answerArr = inputArray
//    for i in 0 ... answerArr.count - 1 {
//        if answerArr[i] == elemToReplace {
//            answerArr[i] = substitutionElem
//        }
//    }
//    return answerArr
//}
//
//arrayReplace(inputArray: [], elemToReplace: 2, substitutionElem: 5)

//func arrayReplace(inputArray: [Int], elemToReplace: Int, substitutionElem: Int) -> [Int]
//{
//    return inputArray.map{$0 == elemToReplace ? substitutionElem : $0 }
//}


/// guard if even

//func evenDigitsOnly(n: Int) -> Bool {
//    return String(n).map{Int(String($0))}.filter{$0! % 2 != 0}.isEmpty
//}
//
//evenDigitsOnly(n: 248622)
