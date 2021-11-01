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
