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


////Consider a string containing only letters and whitespaces. It is allowed to replace some (possibly, none) whitespaces with newline symbols to obtain a multiline text. Call a multiline text beautiful if and only if each of its lines (i.e. substrings delimited by a newline character) contains an equal number of characters (only letters and whitespaces should be taken into account when counting the total while newline characters shouldn't). Call the length of the line the text width.
////
////Given a string and some integers l and r (l ≤ r), check if it's possible to obtain a beautiful text from the string with a text width that's within the range [l, r].
//
//// очень оригинально но тесты не проходит
//
//func solution(inputString: String, l: Int, r: Int) -> Bool {
//    var arrChars = inputString.map { $0.asciiValue! }
//    var arrSpaces = [Int]()
//    var arrCheck = [Int]()
//
//    arrChars.append(UInt8(32))
//
//    for i in 0 ..< arrChars.count {
//        if arrChars[i] == UInt8(32) {
//            arrSpaces.append(i + 1)
//        }
//    }
//
//    for element in (l + 1) ... (r + 1) {
//        let tempArr = arrSpaces
//        let newArr = tempArr.map { $0 % element }
//        if newArr.last == 0 && newArr.filter({ $0 == 0}).count > 1 {
//            arrCheck = tempArr.filter({ $0 % element == 0}).map { $0 / element }
//        }
//    }
//
//    if arrCheck.isEmpty {
//        return false
//    }
//
//    for i in 0 ..< arrCheck.count - 1 {
//        if arrCheck[i + 1] - arrCheck[i] != 1 {
//            return false
//        }
//    }
//
//    return true
//}
//
//let check = "abc def ghi"
//
//solution(inputString: check, l: 4, r: 10)
//solution(inputString: "aa aa aaaaa aaaaa aaaaa", l: 6, r: 11)
//solution(inputString: "Look at this example of a correct text", l: 5, r: 15)
//
//// а это работает
//func solution(inputString: String, l: Int, r: Int) -> Bool {
//    let arr = Array(inputString)
//    for i in l...r {
//        if arr.count % (i + 1) == i {
//            var beautiful = true
//            for j in 0...((arr.count + 1) / (i + 1)) - 2  {
//                if arr[(j+1)*(i+1)-1] != " " {
//                    beautiful = false
//                }
//            }
//
//            if beautiful {
//                return true
//            }
//        }
//    }
//
//    return false
//}


//Some people run along a straight line in the same direction. They start simultaneously at pairwise distinct positions and run with constant speed (which may differ from person to person).
//
//If two or more people are at the same point at some moment we call that a meeting. The number of people gathered at the same point is called meeting cardinality.
//
//For the given starting positions and speeds of runners find the maximum meeting cardinality assuming that people run infinitely long. If there will be no meetings, return -1 instead.
//
//Example
//
//For startPosition = [1, 4, 2] and speed = [27, 18, 24], the output should be
//solution(startPosition, speed) = 3.
//
//In 20 seconds after the runners start running, they end up at the same point. Check out the gif below for better understanding:

// больной туплю

//func position (start: Int, speed: Int, step: Int) -> Int {
//    start + speed * step
//}
//
//func solution(startPosition: [Int], speed: [Int]) -> Int {
//    var count = 0
//
//    for j in 0 ... 100 {
//        var arr = [Int]()
//        var repeats = 0
//        for i in 0 ..< speed.count {
//            if arr.contains(position(start: startPosition[i], speed: speed[i], step: j)) {
//                repeats += 1
//            }
//            arr.append(position(start: startPosition[i], speed: speed[i], step: j))
//        }
//        if repeats > count {
//            count = repeats
//        }
//        repeats = 0
//        arr = []
//    }
//    return count > 0 ? count : -1
//}
//
//solution(startPosition: [1, 4, 2], speed: [27, 18, 24])

//func solution(startPosition: [Int], speed: [Int]) -> Int {
//    var res = -1
//    for indexi in startPosition.indices {
//        for indexj in startPosition.indices {
//            var count = 0
//            let diff = startPosition[indexj] - startPosition[indexi]
//            let find = speed[indexi] - speed[indexj]
//            if diff * find < 1 {
//                continue
//            }
//            for indexk in startPosition.indices {
//                if startPosition[indexk] * find + speed[indexk] * diff == startPosition[indexi] * find + speed[indexi] * diff {
//                    count += 1
//                }
//            }
//            if count > res {
//                res = count
//            }
//        }
//    }
//    return res
//}

//Given a rectangular matrix and an integer column, return an array containing the elements of the columnth column of the given matrix (the leftmost column is the 0th one).

//func solution(matrix: [[Int]], column: Int) -> [Int] {
//    var answer = [Int]()
//    for element in matrix {
//        answer.append(element[column])
//    }
//    return answer
//}
//
//func solution(matrix: [[Int]], column: Int) -> [Int] {
//    return matrix.map{ $0[column] }
//}

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



