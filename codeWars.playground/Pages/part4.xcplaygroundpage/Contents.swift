//: [Previous](@previous)

import Foundation

//find minimal  jump

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
//
//// изящно
//func avoidObsddtacles(inputArray: [Int]) -> Int {
//    var minimumJump = 1
//    while inputArray.map({ $0 % minimumJump }).contains(0) {
//        minimumJump += 1
//    }
//    return minimumJump
//}

///// shame fotoes
/////  почти позор
//
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


func minebsweeper(matrix: [[Bool]]) -> [[Int]] {
var arr = Array<[Int]>(repeating: Array<Int>(repeating:0, count: matrix[0].count), count: matrix.count)
  
  for i in 0..<matrix.count {
    for j in 0..<matrix[i].count {
      for i1 in -1...1 {
        for j1 in -1...1 {
            // очень интересная штука ~=
          if (i1 != 0 || j1 != 0) && 0..<matrix.count ~= (i + i1) && 0..<matrix[i].count ~= (j + j1) {
            arr[i][j] += matrix[i + i1][j + j1] ? 1 : 0
          }
        }
      }
    }
  }
  
  return arr
}
