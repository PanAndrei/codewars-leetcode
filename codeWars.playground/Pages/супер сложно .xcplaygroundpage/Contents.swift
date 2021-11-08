//: [Previous](@previous)

//import Foundation

///Given an array of equal-length strings, you'd like to know if it's possible to rearrange the order of the elements in such a way that each consecutive pair of strings differ by exactly one character. Return true if it's possible, and false if not.



//var thty = ttt.map {$0.unicodeScalars.map{$0.value}.reduce(0, +)}.sorted()
//print(thty)

//прекрасно работает если буквы бы отличались на одну

//var rr = ["ff", "aa",
//          "ba",
//          "cb"]
//print(rr.sorted())
//var tt = rr.sorted()
//print(tt.map{$0.map{$0}})
//
//var f = ["a", "b", "c"]
//var e = ["a", "b", "d"]
//
//f[0] == e[0]
//
//func stringsRearrangement(inputArray: [String]) -> Bool {
//    var mult = 0
//    var newArr = inputArray.sorted()
//    let newArrSort = newArr.map{$0.map{$0}}
//    for i in 0 ..< inputArray.count - 1 {
//        for j in 0 ... inputArray[i].count - 1 {
//            if newArrSort[i][j] != newArrSort[i + 1][j] {
//                mult += 1
//            }
//            if mult != 1 {
//                return false
//            }
//        }
//        mult = 0
//    }
//    return true
//}

//func stringsRearrangement2(inputArray: [String]) -> Bool {
//    let newArr = inputArray.map {$0.unicodeScalars.map{$0.value}.reduce(0, +)}.sorted()
//    for i in 0 ... newArr.count - 2 {
//        if newArr[i + 1] - newArr[i] > 1 {
//            print(newArr)
//            return false
//        }
//    }
//    print(newArr)
//    return true
//}

//var ff = ["aa",
//          "ba",
//          "ce"]
//
//var trt = ["dd", "ab",
//          "bb",
//          "aa"]
//print(trt.enumerated())

//stringsRearrangement(inputArray: ff)
//stringsRearrangement(inputArray: trt)

//func stringsRearrangement(inputArray: [String]) -> Bool {
//    var result = [[String]]()
//
//    func permute(head: [String], tail: [String]) {
//        if tail.isEmpty {
//            result += [head]
//        }
//        for (i, t) in tail.enumerated() {
//            var newTail = tail
//            newTail.remove(at: i)
//            permute(head: head + [t], tail: newTail)
//        }
//    }
//    permute(head: [], tail: inputArray)
//
//    return result.first { arr in
//        zip(arr, arr[1...]).reduce(true) { $0 && zip($1.0, $1.1).filter { $0 != $1 }.count == 1 }
//    } != nil
//}
//

//func stringsRearrangement(inputArray: [String]) -> Bool {
//    let a = inputArray.map {$0.unicodeScalars.map{ $0.value }}
//    return trying([], a)
//}
//
//func differ(_ a1: [UInt32], _ a2: [UInt32]) -> Int {
//    var sum = 0
//    for i in 0..<a1.count {
//        if a1[i] != a2[i] {
//            sum += 1
//        }
//    }
//    return sum
//}
//
//func trying(_ e: [UInt32], _ a: [[UInt32]]) -> Bool {
//    if a.count == 0 {
//        return true
//    }
//
//    for i in 0..<a.count {
//        if e.count == 0 || differ(a[i], e) == 1 {
//            var temp = a
//            let rm = temp.remove(at: i)
//            if trying(rm, temp) {
//                return true
//            }
//        }
//    }
//    return false
//}
