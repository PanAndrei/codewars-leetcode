//: [Previous](@previous)

//You're given a substring s of some cyclic string. What's the length of the smallest possible string that can be concatenated to itself many times to obtain this cyclic string?

//For s = "cabca", the output should be
//solution(s) = 3.
//
//"cabca" is a substring of a cycle string "abcabcabcabc..." that can be obtained by concatenating "abc" to itself. Thus, the answer is 3.



//func checkSubArr(arrBig: [String], subArr: [String]) -> Bool {
//    for i in 0 ..< subArr.count {
//        if arrBig[i] != subArr[i] {
//            return false
//        }
//    }
//    return true
//}
//
//// не выявляет такие случаи как solution(s: "aab")
//
//func solution(s: String) -> Int {
//    let arr = s.map { String($0) }
//    var answer = 1
//
//    for i in 0 ..< arr.count {
//        let slice = Array(arr[0 ... i])
//        let upperBound = (i + answer) < (arr.count - 1) ? (i + answer) : (arr.count - 1)
//        if i == arr.count - 1 {
//            return arr.count
//        }
//        let sub = Array(arr[answer ... upperBound])
//        if checkSubArr(arrBig: slice, subArr: sub) {
//            return answer
//        } else {
//            answer += 1
//        }
//    }
//    return answer
//}

//solution(s: "cabca")
//solution(s: "aab")

//perfet

//func solution(s: String) -> Int {
//    var newStr = s.map { String($0) }
//    var step = s.count
//    var answers = [Int]()
//    var answer = 0
//
//    for i in 0 ..< newStr.count {
//        let cycle = newStr + Array(newStr[i ... newStr.count - 1])
//        if i > 0 {
//            if cycle[0 ... step - 1] == cycle[step ... step * 2 - 1] &&
//               cycle[1 ... step]     == cycle[step + 1 ... step * 2]  {
//                answer = step
//                answers.append(answer)
//                step -= 1
//            } else {
//                step -= 1
//            }
//        } else {
//            step -= 1
//        }
//    }
//
//        answer = answers.filter { $0 > 0 }.min() ?? s.count
//
//    return answer
//}
//
//solution(s: "abababaabababa")
//

// а как надо было
//func solution(s: String) -> Int {
//    if Set(s).count == 1 { return 1 }
//    var result = s.count
//    for i in 0..<s.count {
//        for j in i..<s.count {
//            let sub = String(Array(s)[i...j])
//            let cyclic = Array(repeating: sub, count: 5).reduce("", +)
//            if cyclic.contains(s) && sub.count < result {
//                result = sub.count
//            }
//        }
//    }
//
//    return result
//}

