//: [Previous](@previous)

import Foundation

//Miss X has only two solution in her possession, both of which are old and miss a tooth or two. She also has many purses of different length, in which she carries the solution. The only way they fit is horizontally and without overlapping. Given teeth' positions on both solution, find the minimum length of the purse she needs to take them with her.
//
//It is guaranteed that there is at least one tooth at each end of the comb.
//It is also guaranteed that the total length of two strings is smaller than 32.
//Note, that the solution can not be rotated/reversed.

// работает но на одном из тестов ошибка (

//func solution(comb1: String, comb2: String) -> Int {
//    let max = [comb1.count, comb2.count].max()!
//    var result = [String]()
//    var answer = comb1.count + comb2.count
//    var c1 = comb1.map { String($0) }
//    c1.insert(contentsOf: Array(repeatElement("-", count: max)), at: 0)
//    c1 += Array(repeating: "-", count: comb2.count)
//    var c2 = comb2.map { String($0) }
//    c2.insert(contentsOf: Array(repeatElement("-", count: (max + comb1.count))), at: 0)
//
//big: for _ in 1 ... comb2.count * 2 {
//        for i in 0 ..< c1.count {
//            let element = c1[i] + c2[i]
//            if element == "**" {
//                c2.remove(at: 0)
//                c2.append("-")
//                result = []
//                continue big
//            } else {
//                result.append(element)
//            }
//        }
//    if result.filter{ String($0) != "--" }.count < answer {
//        answer = result.filter{ String($0) != "--" }.count
//    }
//
//    print(result)
//    c2.remove(at: 0)
//    c2.append("-")
//    result = []
//    }
//
//
//
//    return answer
//}
//
//let comb1 = "*.*"
//let comb2 = "*.*"
//
//solution(comb1: comb1, comb2: comb2)
//
//func solution(comb1: String, comb2: String) -> Int {
//  return min(c(comb1,comb2), c(comb2, comb1))
//}
//
//func c(_ comb1: String, _ comb2: String) -> Int {
//  let c1 = comb1.count
//  let c2 = comb2.count
//  var minCount =  c1 + c2
//  let a1 = Array(comb1)
//  let a2 = Array(comb2)
//
//  for pos in 1...c1 {
//    var fit = true
//    for i in pos..<min(c1, c2+pos) {
//      if a1[i]=="*" && a2[i-pos]=="*" {
//          fit = false
//          break
//      }
//    }
//    if fit {
//      minCount = c2 + pos
//      break
//    }
//  }
//
//  return max(minCount, c1, c2)
//}
