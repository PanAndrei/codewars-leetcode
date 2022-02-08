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
//            var smallest = answer[i]
//            if answer[j] < smallest {
//                answer[i] = answer[j]
//                answer[j] = smallest
//            }
//        }
//    }
//
//    return answer
//}
//
//solution(a: [-1, 150, 190, 170, -1, -1, 160, 180])

// разобрать индексы деревьев
//func solution(a: [Int]) -> [Int] {
//    let trees = a.enumerated().filter { $0.element == -1 }
//    var sorted = a.filter { $0 != -1 }.sorted()
//    for tree in trees {
//        sorted.insert(-1, at: tree.offset)
//    }
//    return sorted
//}
