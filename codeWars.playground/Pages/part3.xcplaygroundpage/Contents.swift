//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

/// next events

// lucky number

//func isLucky(n: Int) -> Bool {
//    let numberArr = String(n).compactMap { Int(String($0))}
//    var left = 0
//    var right = 0
//    for i in 0 ... (numberArr.count - 2) / 2 {
//        left += numberArr[i]
//    }
//    for j in ((numberArr.count) / 2) ... numberArr.count - 1 {
//        right += numberArr[j]
//    }
//    return left == right
//}
//
//isLucky(n: 223_160)
//
//func isLuddcky(n: Int) -> Bool {
//    var a = String(n).characters.map {Int(String($0))!}
//    var a1 = a[0..<a.count/2]
//    var a2 = a[a1.count..<a.count]
//
//    return a1.reduce (0, {$0+$1}) == a2.reduce (0, {$0+$1})
//}

// sorting people

//For a = [-1, 150, 190, 170, -1, -1, 160, 180], the output should be
//sortByHeight(a) = [-1, 150, 160, 170, -1, -1, 180, 190].

//var aa = [-1, 150, 190, 170, -1, -1, 160, 180]
//
//
//func sortByHeight(a: [Int]) -> [Int] {
//    var highArr = a.filter {$0 > 0}
//    highArr.sort()
//    var i = 0
//    var treesAndPeople : Array <Int> = []
//    for j in 0 ... a.count - 1 {
//        if a[j] == -1 {
//            treesAndPeople.append(-1)
//        } else {
//            treesAndPeople.append(highArr[i])
//            i += 1
//        }
//    }
//    return treesAndPeople
//}
//print(aa)
//print(sortByHeight(a: aa))
//
//
//func sortByHeddight(a: [Int]) -> [Int] {
//    var people = a.filter {$0 != -1}.sorted()
//    var pi = people.makeIterator()
//    return a.map { ($0 == -1) ? $0 : pi.next()! }
//}

var ana = [2, 4, 6, 9]
var nn = ana.makeIterator()
print(ana, nn)
