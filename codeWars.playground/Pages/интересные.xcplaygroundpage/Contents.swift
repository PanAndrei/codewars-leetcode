//: [Previous](@previous)

//func dontGiveMeFive(_ start: Int, _ end: Int) -> Int {
//  return (start...end).filter { !String($0).contains("5") }.count
//}
//
//dontGiveMeFive(2, 61)

//Determine if the given number is a power of some non-negative integer.

//func solution(n: Int) -> Bool {
//    var number = 0.0
//    for i in 2 ... 8 {
//        number = pow(Double(n), (1.0 / Double(i)))
//        if pow((number.rounded()), Double(i)) == Double(n) {
//            print(number)
//            return true
//        }
//    }
//    return false
//}

//func centureFromYear(_ year: Int) -> Int {
//  return ( year + 99 ) / 100
//}


//You are given a recursive notation of a binary tree: each node of a tree is represented as a set of three elements:
//
//value of the node;
//left subtree;
//right subtree.
//So, a tree can be written as (value left_subtree right_subtree). It is guaranteed that 1 ≤ value ≤ 109. If a node doesn't exist then it is represented as an empty set: (). For example, here is a representation of a tree in the given picture:
//
//(2 (7 (2 () ()) (6 (5 () ()) (11 () ()))) (5 () (9 (4 () ()) ())))
//
//
//Your task is to obtain a list of nodes, that are the most distant from the tree root, in the order from left to right.
//
//In the notation of a node its value and subtrees are separated by exactly one space character.

//https://app.codesignal.com/arcade/code-arcade/secret-archives/ptyXoxtZfrPSNRe5m

//func solution(tree: String) -> [Int] {
//    let characters = Array(tree)
//    var lastNodes = [(number: Int, parents: Int)]()
//    let regex = try! NSRegularExpression(pattern: "(\\d+) \\(\\) \\(\\)", options: [])
//    let matches = regex.matches(in: tree, options: [], range: NSRange(location: 0, length: tree.count))
//    for match in matches {
//        let range = match.range(at: 1)
//        let number = Int((tree as NSString).substring(with: range))!
//        let parents = characters[..<range.lowerBound].filter { $0 == "(" }.count - characters[..<range.lowerBound].filter { $0 == ")" }.count - 1
//        lastNodes.append((number, parents))
//    }
//    let parentsMax = lastNodes.max { $0.parents < $1.parents }!
//    return lastNodes.filter { $0.parents == parentsMax.parents }.map { $0.number }
//}


//func solution(tree: String) -> [Int] {
//    var depth = -1
//    var levels = [[Int]]()
//    var parsingNumber = false
//    var sNumber = ""
//    for char in tree.map { $0 } {
//        switch char {
//        case "(":
//            depth += 1
//        case ")":
//            depth -= 1
//        case " ":
//            if parsingNumber {
//                parsingNumber = false
//                if levels.count == depth {
//                    levels.append([Int(sNumber)!])
//                } else {
//                    levels[depth].append(Int(sNumber)!)
//                }
//            }
//        default:
//            if !parsingNumber {
//                parsingNumber = true
//                sNumber = String(char)
//            } else {
//                sNumber.append(char)
//            }
//        }
//    }
//    return levels.last!
//}
