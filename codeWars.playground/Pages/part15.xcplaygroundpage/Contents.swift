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
