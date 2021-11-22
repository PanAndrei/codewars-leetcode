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
