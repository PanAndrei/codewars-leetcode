//: [Previous](@previous)

import Foundation

//Given a rectangular matrix of characters, add a border of asterisks(*) to it.

//func solution(picture: [String]) -> [String] {
//    var starsString = String(Array(repeatElement("*", count: picture[0].count + 2)))
//    var newArr = picture
//    for i in 0 ..< picture.count {
//        newArr[i] = "*" + newArr[i] + "*"
//    }
//    newArr.insert(starsString, at: 0)
//    newArr.append(starsString)
//    print(newArr)
//    return newArr
//}
//
//solution(picture: ["abc", "ded"])

//N candles are placed in a row, some of them are initially lit. For each candle from the 1st to the Nth the following algorithm is applied: if the observed candle is lit then states of this candle and all candles before it are changed to the opposite. Which candles will remain lit after applying the algorithm to all candles in the order they are placed in the line?

//func solution(a: [Int]) -> [Int] {
//    var newArr = a
//    for i in 0 ..< newArr.count {
//        let slicedArr = newArr[(i) ... (newArr.count - 1)]
//        print(slicedArr)
//        let numFired = slicedArr.filter { $0 == 1}.count
//        if numFired % 2 == 0 {
//            continue
//        } else {
//            if newArr[i] == 1 {
//                newArr[i] = 0
//            } else {
//                newArr[i] = 1
//            }
//        }
//    }
//    return newArr
//}
//
//solution(a: [1, 1, 1, 1, 1])
