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

//var ana = [2, 4, 6, 9]
//var nn = ana.makeIterator()
//print(ana, nn)


// reverse in parantes

func reverseInParentheses(inputString: String) -> String {
    guard inputString.count > 1 else {
        return inputString
    }
    
    if inputString == "()" {
        return ""
    }
    
    var arrParant: Array <Int> = []
    var arrChar = inputString.map { String($0)}
    var answer : Array <String> = []
    var answStr = ""
    for i in 0 ... arrChar.count - 1 {
        if arrChar[i] == "(" {
            arrParant.append(i)
        } else if arrChar[i] == ")" {
            arrParant.append(-i)
        }
    }
    
    while arrChar.contains(")") {
        for j in 0 ... arrParant.count - 1 {
            if arrParant[j] >= 0 && arrParant[j + 1] < 0 {
                arrChar[arrParant[j]] = "."
                arrChar[-arrParant[j + 1]] = "."
                var tmp = arrChar[(arrParant[j])...(-arrParant[j + 1])]
                tmp.reverse()
                arrChar[(arrParant[j])...(-arrParant[j + 1])] = tmp
                arrParant.remove(at: j)
                arrParant.remove(at: j)
                break
            } else {
                continue
            }
        }
    }
    answer = arrChar.filter {$0 != "."}
    answStr = answer.joined()
    return answStr
}

var a = "(bar)"
var b = "foo(bar)baz"
var c = "foo(bar)baz(blim)"
var d = "foo(bar(baz))blim"
var f = ""
var g = "()"
var r = "(abc)d(efg)"


print(reverseInParentheses(inputString: a))
print(reverseInParentheses(inputString: b))
print(reverseInParentheses(inputString: c))
print(reverseInParentheses(inputString: d))
print(reverseInParentheses(inputString: f))
print(reverseInParentheses(inputString: g))
print(reverseInParentheses(inputString: r))



func reversdddeInParentheses(inputString: String) -> String {
    var stack = [Character]()
    
    for c in inputString {
        if c == ")" {
            for e in 0..<stack.count {
                let index = stack.count - 1 - e
                if stack[index] == "(" {
                    stack.remove(at: index)
                    let chunk = stack[index..<stack.count].reversed()
                    stack.removeLast(chunk.count)
                    stack.append(contentsOf: chunk)
                    break
                }
            }
        } else {
            stack.append(c)
        }
    }
    
    return String(stack)
}


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
