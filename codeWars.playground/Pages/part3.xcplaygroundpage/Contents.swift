//: [Previous](@previous)

import Foundation


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

//var ana = [2, 4, 6, 9]
//var nn = ana.makeIterator()
//print(ana, nn)


// reverse in parantes

//func reverseInParentheses(inputString: String) -> String {
//    guard inputString.count > 1 else {
//        return inputString
//    }
//
//    if inputString == "()" {
//        return ""
//    }
//
//    var arrParant: Array <Int> = []
//    var arrChar = inputString.map { String($0)}
//    var answer : Array <String> = []
//    var answStr = ""
//    for i in 0 ... arrChar.count - 1 {
//        if arrChar[i] == "(" {
//            arrParant.append(i)
//        } else if arrChar[i] == ")" {
//            arrParant.append(-i)
//        }
//    }
    
//    while arrChar.contains(")") {
//        for j in 0 ... arrParant.count - 1 {
//            if arrParant[j] >= 0 && arrParant[j + 1] < 0 {
//                arrChar[arrParant[j]] = "."
//                arrChar[-arrParant[j + 1]] = "."
//                var tmp = arrChar[(arrParant[j])...(-arrParant[j + 1])]
//                tmp.reverse()
//                arrChar[(arrParant[j])...(-arrParant[j + 1])] = tmp
//                arrParant.remove(at: j)
//                arrParant.remove(at: j)
//                break
//            } else {
//                continue
//            }
//        }
//    }
//    answer = arrChar.filter {$0 != "."}
//    answStr = answer.joined()
//    return answStr
//}
//
//var a = "(bar)"
//var b = "foo(bar)baz"
//var c = "foo(bar)baz(blim)"
//var d = "foo(bar(baz))blim"
//var f = ""
//var g = "()"
//var r = "(abc)d(efg)"
//
//
//print(reverseInParentheses(inputString: a))
//print(reverseInParentheses(inputString: b))
//print(reverseInParentheses(inputString: c))
//print(reverseInParentheses(inputString: d))
//print(reverseInParentheses(inputString: f))
//print(reverseInParentheses(inputString: g))
//print(reverseInParentheses(inputString: r))



//func reversdddeInParentheses(inputString: String) -> String {
//    var stack = [Character]()
//
//    for c in inputString {
//        if c == ")" {
//            for e in 0..<stack.count {
/// подсчет в обратную сторону!!!!
//                let index = stack.count - 1 - e
//                if stack[index] == "(" {
//                    stack.remove(at: index)
//                    let chunk = stack[index..<stack.count].reversed()
//                    stack.removeLast(chunk.count)
//                    stack.append(contentsOf: chunk)
//                    break
//                }
//            }
//        } else {
//            stack.append(c)
//        }
//    }
//
//    return String(stack)
//}


//////////

// two crowds

//func alternatingSums(a: [Int]) -> [Int] {
//    var answer : Array<Int> = []
//    var first : Array <Int> = []
//    var second : Array <Int> = []
//    var av = 0
//    var bv = 0
//
//    for i in 0 ... a.count - 1 {
//        if i == 0 {
//            first.append(a[0])
//        } else if i % 2 == 0 {
//            first.append(a[i])
//        } else {
//            second.append(a[i])
//        }
//    }
//    av = first.reduce(0, +)
//    bv = second.reduce(0, +)
//    answer = [av, bv]
//    return answer
//}
//
//var dds =  [50, 60, 60, 45, 70]
//
//alternatingSums(a: dds)
//
//func alternatffingSums(a: [Int]) -> [Int] {
//    var result = [0, 0]
//
//    for i in 0...a.count-1 {
//        result[i%2] += a[i]
//    }
//
//    return result
//}


// add border

//func addBorder(picture: [String]) -> [String] {
//    var newarr = picture.map { "*" + $0 + "*"}
//    let border = String(repeating: "*", count: (picture[0].count + 2))
//    newarr.insert(border, at: 0)
//    newarr.insert(border, at: newarr.count)
//    return newarr
//}
//
//print(addBorder(picture: ["ff", "ffd", "eed"]))
//
//func addBovvrder(picture: [String]) -> [String] {
//    let asteriks = String(repeating: "*", count: picture[0].characters.count + 2)
//    var pictureWithBorder = picture.map { "*" + $0 + "*" }
//    return [asteriks] + pictureWithBorder + [asteriks]
//}

// similar arrays
// оптяь очень долго

//func areSimilar(a: [Int], b: [Int]) -> Bool {
//    var newA = a
//    guard a != b else {
//        return true
//    }
//
//    for i in 0 ... (newA.count - 2) {
//        for j in 1 ... (newA.count - i - 1) {
//            let tmp = newA[i]
//            newA[i] = newA[i + j]
//            newA[i + j] = tmp
//            if newA == b {
//                return true
//            } else {
//                newA = a
//            }
//        }
//     }
//    return false
//}
//
//
//let a =  [3, 1, 2, 3, 4, 8]
//let b =  [3, 2, 1, 3, 4, 8]
//
//areSimilar(a: a, b: b)
//
//var aa = [4, 6, 3]
//var bb = [3, 4, 6]
//
//areSimilar(a: aa, b: bb)

// а это гениально
//сложность алгоритма в разы меньше
//
//func areSввimilar(a: [Int], b: [Int]) -> Bool {
//    var similar: [Int] = []
//
//    for i in 0..<a.count {
//        if a[i] != b[i] {
//            similar.append(i)
//        }
//    }
//
//    if similar.count == 0 {
//        return true
//    } else if similar.count != 2 {
//        return false
//    }
//
//    let c = similar[0]
//    let d = similar[1]
//
//    return a[c] == b[d] && a[d] == b[c] ? true : false
//}
//
//let a =  [3, 1, 2, 3, 4, 8]
//let b =  [3, 2, 1, 3, 4, 8]
//
//areSввimilar(a: a, b: b)
//
//var aa = [4, 6, 3]
//var bb = [3, 4, 6]
//
//areSввimilar(a: aa, b: bb)


/// increasing array by one
/// perfect

//func arrayChange(inputArray: [Int]) -> Int {
//    var newArr = inputArray
//    var answer = 0
//    for i in 0 ... newArr.count - 2 {
//        if newArr[i + 1] > newArr[i] {
//            continue
//        } else {
//            answer += 1 + newArr[i] - newArr[i + 1]
//            newArr[i + 1] += 1 + newArr[i] - newArr[i + 1]
//        }
//    }
//    return answer
//}
//
//arrayChange(inputArray: [2, 3, 3, 5, 5, 5, 4, 12, 12, 10, 15])


/// is it palindrom?
//
//var rinputString = [2, 3, 3, 5, 5, 5, 4, 12, 12, 10, 15]
//var warrayOfRepeats : [Int] = []
//var proceedElements: [Int] = []
//
//rinputString.forEach({
//    let element = $0
//
//    guard proceedElements.contains(element) == false
//    else {
//        return
//    }
//
//    let elementcount = rinputString.filter({$0 == element}).count
//    warrayOfRepeats.append(elementcount)
//    proceedElements.append(element)
//})
//
//print(warrayOfRepeats)
//
//var rrr = "ddddrervs"
//let dd = rrr.map {String($0)}
//print(dd)
//
//func palindromeRearranging(inputString: String) -> Bool {
//    let startArray = inputString.map {String($0)}
//    var arrayOfRepeats : [Int] = []
//    var proceedElements : [String] = []
//
//    startArray.forEach({
//        let element = $0
//
//        guard proceedElements.contains(element) == false
//        else {
//            return
//        }
//
//        let elementcount = startArray.filter({$0 == element}).count
//        arrayOfRepeats.append(elementcount)
//        proceedElements.append(element)
//    })
//
//    if startArray.count % 2 == 0 {
//        let checArr = arrayOfRepeats.filter({$0 % 2 != 0})
//        return checArr.isEmpty
//    } else {
//        let chechArr = arrayOfRepeats.filter({$0 % 2 != 0})
//        return chechArr.count == 1
//    }
//}
//
//palindromeRearranging(inputString: "abdhuierf")
//
//func palindromeRearnnranging(inputString: String) -> Bool {
//    Set(inputString).map{unique in inputString.filter{char in char==unique}.count%2}.reduce(0, +)<=1
//}

//var inputString = "abdhuierf"
//
//Set(inputString).map{unique in inputString.filter{char in char==unique}.count%2}.reduce(0, +)<=1


/// two arms

//func areEquallyStrong(yourLeft: Int, yourRight: Int, friendsLeft: Int, friendsRight: Int) -> Bool {
//return (yourLeft == friendsLeft && yourRight == friendsRight) || (yourLeft == friendsRight && yourRight == friendsLeft)
//}
//
///// красиво сделано
//func areEquallyStrovvng(yourLeft: Int, yourRight: Int, friendsLeft: Int, friendsRight: Int) -> Bool {
//    return [yourLeft, yourRight].sorted() == [friendsLeft, friendsRight].sorted()
//}

/// maximal difference betveen two elements

//func arrayMaximalAdjacentDifference(inputArray: [Int]) -> Int {
//    var answer = 0
//    for i in 0 ... inputArray.count - 2 {
//        if abs(inputArray[i] - inputArray[i + 1]) > answer {
//            answer = abs(inputArray[i] - inputArray[i + 1])
//        }
//    }
//    return answer
//}
//
//func arrayMaximvvalAdjacentDifference(inputArray: [Int]) -> Int {
//    return inputArray.enumerated().map { $0 < inputArray.count - 1 ? abs($1.distance(to: inputArray[$0 + 1])) : 0 }.max()!
//}


/// is it ip4?

//var str = "01"
//str.count
//var crt = Int(str)
//print(crt!)
//String(crt!).count == str.count
//
//
//func isIPv4Address(inputString: String) -> Bool {
//    let arrayOfGoodNum = (0...255)
//    let arrayOfNmbers = inputString.components(separatedBy: ".")
//    if arrayOfNmbers.count == 4 {
//        for element in arrayOfNmbers {
//            if arrayOfGoodNum.contains(Int(String(element)) ?? -1) {
//                let newElement = String(Int(String(element)) ?? -10000000)
//                if newElement.count == element.count {
//                    continue
//                } else {
//                    return false
//                }
//            } else {
//                return false
//            }
//        }
//    } else {
//        return false
//    }
//    return true
//}
//
//isIPv4Address(inputString: "01.233.161.131")
//
//// подумать над методом hasPrefix
//
//func isIPvnn4Address(inputString: String) -> Bool {
//       let segmentStringArrar = inputString.split(separator: ".", maxSplits: Int.max, omittingEmptySubsequences: false)
//       if segmentStringArrar.count != 4 {
//           return false
//       }
//       for segmentString in segmentStringArrar {
//           if (segmentString.hasPrefix("0") && segmentString != "0") || segmentString.hasPrefix("-") {
//               return false
//           }
//           guard let segmentNumber = Int(segmentString), (0...255).contains(segmentNumber) else {
//               return false
//           }
//       }
//       return true
//   }
