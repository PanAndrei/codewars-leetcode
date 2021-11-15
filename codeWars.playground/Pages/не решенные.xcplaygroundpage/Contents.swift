//: [Previous](@previous)

import Foundation



// changing weights
//https://www.codewars.com/kata/55c6126177c9441a570000cc/train/swift
// подумать про алгоритм сортировки
// не решено там где нужно первое число сравнивать 

//friend John and I are members of the "Fat to Fit Club (FFC)". John is worried because each month a list with the weights of members is published and each month he is the last on the list which means he is the heaviest.
//
//I am the one who establishes the list so I told him: "Don't worry any more, I will modify the order of the list". It was decided to attribute a "weight" to numbers. The weight of a number will be from now on the sum of its digits.
//
//For example 99 will have "weight" 18, 100 will have "weight" 1 so in the list 100 will come before 99.
//
//Given a string with the weights of FFC members in normal order can you give this string ordered by "weights" of these numbers?


//let sdf = "2000 10003 1234000 44444444 9999 11 11 22 123"
//var arrayString = sdf.components(separatedBy: " ")
//var arrayIntStart = arrayString.map { Int($0)! }
//var arrayStringFinal = arrayString
//var arrayIntFinal : [Int] = []
//
//arrayStringFinal.forEach {
//    let element = $0
//    var value = 0
//    for part in element {
//        value += Int(String(part))!
//    }
//    arrayIntFinal.append(value)
//    value = 0
//}
//
//
//
//
//print(sdf)
//print(arrayString)
//print(arrayIntStart)
//print(arrayIntFinal)
//
//for _ in 1 ... 10 {
//    for i in 0 ... arrayIntFinal.count - 2 {
//        var tmpA = 0
//        var tmpB = 0
//        if arrayIntFinal[i] > arrayIntFinal[i + 1] {
//            tmpA = arrayIntFinal[i]
//            arrayIntFinal[i] = arrayIntFinal[i + 1]
//            arrayIntFinal[i + 1] = tmpA
//
//            tmpB = arrayIntStart[i]
//            arrayIntStart[i] = arrayIntStart[i + 1]
//            arrayIntStart[i + 1] = tmpB
//        }
//        tmpA = 0
//        tmpB = 0
//    }
//}
//
//print(arrayIntStart)
//print(arrayIntFinal)
//
//
//for _ in 1 ... 10 {
//    for i in 0 ... arrayIntFinal.count - 2 {
//        var tmpA = 0
//        var tmpB = 0
//        if arrayIntFinal[i] > arrayIntFinal[i + 1] {
//            tmpA = arrayIntFinal[i]
//            arrayIntFinal[i] = arrayIntFinal[i + 1]
//            arrayIntFinal[i + 1] = tmpA
//
//            tmpB = arrayIntStart[i]
//            arrayIntStart[i] = arrayIntStart[i + 1]
//            arrayIntStart[i + 1] = tmpB
//        }
//        tmpA = 0
//        tmpB = 0
//    }
//}



//func orderWeight(_ s: String) -> String {
//    var arrayStart = s.components(separatedBy: " ")
//    var arrayIntStart = arrayStart.map { Int($0)! }
//    var arrayStringFinal = arrayStart
//    var arrayIntFinal : [Int] = []
//    var stringFinal = ""
//
//    arrayStringFinal.forEach {
//        let element = $0
//        var value = 0
//        for part in element {
//            value += Int(String(part))!
//        }
//        arrayIntFinal.append(value)
//        value = 0
//    }
//
//    for _ in 1 ... 10 {
//        for i in 0 ... arrayIntFinal.count - 2 {
//            var tmpA = 0
//            var tmpB = 0
//            if arrayIntFinal[i] > arrayIntFinal[i + 1] {
//                tmpA = arrayIntFinal[i]
//                arrayIntFinal[i] = arrayIntFinal[i + 1]
//                arrayIntFinal[i + 1] = tmpA
//
//                tmpB = arrayIntStart[i]
//                arrayIntStart[i] = arrayIntStart[i + 1]
//                arrayIntStart[i + 1] = tmpB
//            }
//            tmpA = 0
//            tmpB = 0
//        }
//    }
//
//    for element in arrayIntStart {
//        stringFinal += (String(element) + " ")
//    }
//    stringFinal.removeLast()
//    return (stringFinal)
//}
//
//print(orderWeight("88 33 22 55 11 44"))
