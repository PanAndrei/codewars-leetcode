//: [Previous](@previous)

import Foundation


//Given two strings a and b, both consisting only of lowercase English letters, your task is to calculate how many strings equal to a can be constructed using only letters from the string b? Each letter can be used only once and in one string only.


// офигенно но долго
// а правильное решение было таким же!
//func solution4(a: String, b: String) -> Int {
//    var min = b.count
//    var checked = [Character]()
//    for i in 0 ..< a.count {
//        if checked.contains(a.map { $0 }[i]) {
//            continue
//        }
//        let count = b.filter{ $0 == (a.map { $0 }[i]) }.count / a.filter{ $0 == (a.map { $0 }[i]) }.count
//        checked.append(a.map { $0 }[i])
//        if count < min {
//            min = count
//        }
//    }
//    return min
//}
//
//solution(a: "abcn", b: "aannaaabcbcb")
//
//// dolgo
//func solution(a: String, b: String) -> Int {
//    guard Set(b.map { $0 }).isSuperset(of: Set(a.map { $0 })) else { return 0}
//
//    let nn = b.filter { a.contains($0)}
//
//    let arrB = nn.map { $0 }.sorted { f, s in
//        nn.filter { $0 == f}.count < nn.filter { $0 == s}.count
//    }
//
//    let arrA = a.map { $0 }.sorted { f, s in
//        a.filter { $0 == f}.count > a.filter { $0 == s}.count
//    }
//
//
//    let var1 = arrB.filter { $0 == arrB[0]}.count / arrA.filter { $0 == arrB[0]}.count
//    let var2 = arrB.filter { $0 == arrA[0]}.count / arrA.filter { $0 == arrA[0]}.count
//
//    return var1 < var2 ? var1 : var2
//}
//
//func solution(a: String, b: String) -> Int {
//    guard Set(b.map { $0 }).isSuperset(of: Set(a.map { $0 })) else { return 0}
//
//    return 0
//}

////A ciphertext alphabet is obtained from the plaintext alphabet by means of rearranging some characters. For example "bacdef...xyz" will be a simple ciphertext alphabet where a and b are rearranged.
////
////A substitution cipher is a method of encoding where each letter of the plaintext alphabet is replaced with the corresponding (i.e. having the same index) letter of some ciphertext alphabet.
////
////Given two strings, check whether it is possible to obtain them from each other using some (possibly, different) substitution ciphers.
//
//func solution7(string1: String, string2: String) -> Bool {
//    let arr1 = string1.map { $0.asciiValue! }
//    let arr2 = string2.map { $0.asciiValue! }
//    print(arr1)
//    print(arr2)
//    
//    for i in 0 ..< arr1.count - 2 {
//        if arr1[i] == arr2[i] {
//            continue
//        } else if abs(Int(arr1[i] - arr2[i])) != abs(Int(arr1[(i + 1)] - arr2[(i + 1)])) {
//            return false
//        }
//    }
//    return true
//}
//
////solution(string1: "abcd", string2: "acbd")
//
//func solution(string1: String, string2: String) -> Bool {
//    let arr1 = string1.map { $0.asciiValue! }
//    let arr2 = string2.map { $0.asciiValue! }
// 
//    
//    for i in 0 ... arr1.count - 2 {
//        if arr1[i] == arr2[i] {
//            continue
//        } else if abs(Int(arr1[i]) - Int(arr2[i])) != abs(Int(arr1[i + 1]) - Int(arr2[i + 1])) || abs(Int(arr1[i]) - Int(arr2[i])) != abs(Int(arr1[i - 1]) - Int(arr2[i - 1]))
//        {
//       
//            return false
//        }
//    }
//    return true
//}
//
//solution(string1: "abcd", string2: "acbd")
//
//
//func solfution(string1: String, string2: String) -> Bool {
//    return Set(Array(zip(Array(string1).map { String($0) }, Array(string2).map { String($0) })).map { $0.0 + $0.1 }).count == Set(Array(string1)).count && Set(Array(string1)).count == Set(Array(string2)).count
//}

//You are given two strings s and t of the same length, consisting of uppercase English letters. Your task is to find the minimum number of "replacement operations" needed to get some anagram of the string t from the string s. A replacement operation is performed by picking exactly one character from the string s and replacing it by some other character.

//func solution(s: String, t: String) -> Int {
//    var arrS = s.map { String($0) }
//    var arrT = t.map { String($0) }
//
//    for element in arrS  {
//        if arrT.contains(element) {
//            let indexS = arrS.firstIndex(of: element)!
//            let indext = arrT.firstIndex(of: element)!
//            arrS.remove(at: indexS)
//            arrT.remove(at: indext)
//        }
//    }
//    return arrT.count
//}
//
//solution(s: "OVGHK", t: "RPGUC")

//Given a string consisting of lowercase English letters, find the largest square number which can be obtained by reordering the string's characters and replacing them with any digits you need (leading zeros are not allowed) where same characters always map to the same digits and different characters always map to different digits.
//
//If there is no solution, return -1.

//// работает но медленно
//func solution(s: String) -> Int {
//    let count = s.count
//    var arrayRepeats = [Int]()
//    var arrayRepeatsNew = [Int]()
//    var arrayChecked = [String]()
//    var arrayCheckedNew = [String]()
//    var newS = s.map { String($0) }.sorted()
//    var max = 0
//    for element in newS {
//        if !arrayChecked.contains(element) {
//            arrayChecked.append(element)
//            arrayRepeats.append(newS.filter { $0 == element}.count)
//        }
//    }
//    print(arrayRepeats)
//
//    for i in 2 ... Int(pow(10, Double(count))) {
//        let newPow = String(i * i).map { String($0) }.sorted()
//        for element in newPow {
//            if !arrayCheckedNew.contains(element) {
//                arrayCheckedNew.append(element)
//                arrayRepeatsNew.append(newPow.filter { $0 == element}.count)
//            }
//        }
//        if arrayRepeats == arrayRepeatsNew {
//            if i * i > max {
//                max = i * i
//            }
//        }
//        arrayCheckedNew.removeAll()
//        arrayRepeatsNew.removeAll()
//    }
//    return max > 0 ? max : -1
//}
//
//solution(s: "zzz")

//func solution(s: String) -> Int {
//    var uniqueChars = Set(s)
//    var occurrences = uniqueChars.map{ c in s.filter{ c == $0 }.count }.sorted()
//    var l = s.count
//    var n = Int(sqrt(pow(10, Double(l))))
//
//    while n > 0 {
//        let square = "\(n*n)"
//        var uniqueDigits = Set(square)
//        var occurrencesDigits = uniqueDigits.map{ c in square.filter{ c == $0 }.count }.sorted()
//        if occurrencesDigits == occurrences {
//            return n*n
//        }
//        n -= 1
//    }
//
//    return -1
//}

//You are given an array of integers that you want distribute between several groups. The first group should contain numbers from 1 to 104, the second should contain those from 104 + 1 to 2 * 104, ..., the 100th one should contain numbers from 99 * 104 + 1 to 106 and so on.
//
//All the numbers will then be written down in groups to the text file in such a way that:
//
//the groups go one after another;
//each non-empty group has a header which occupies one line;
//each number in a group occupies one line.
//Calculate how many lines the resulting text file will have.

let a = [20000, 239, 10001, 999999, 10000, 20566, 29999]


//// работает но слишком долго
//func solution(a: [Int]) -> Int {
//    var count = 0
//
//    for n in 0 ... 10000 {
//        if !a.filter({ ((1 + n * 10000 ) ... (1 + (n + 1) * 10000)).contains($0)}).isEmpty {
//            count += 1
//        }
//    }
//    return count + a.count
//}
//
//solution(a: a)

// работает но очень долго
//func solution(a: [Int]) -> Int {
//    var count = 0
//    for n in 0 ... 100 {
//        let set =  Set((1 + n * 10000 ) ... (1 + (n + 1) * 10000))
//        if !set.intersection(Set(a)).isEmpty {
//            count += 1
//        }
//    }
//    return count + a.count
//}
//
//solution(a: a)
//
//func solution(a: [Int]) -> Int {
//    return a.count + Set( a.map{ Int(ceil(Double($0) / 10000.0 )) }).count
//}
//
//func solution(a: [Int]) -> Int {
//    var gs = Set<Int>()
//    for i in a {
//        let g = (i - 1 ) / 10000
//        print(i, g)
//        gs.insert(g + 1)
//    }
//    print(a.sorted(), gs.sorted())
//    return a.count + gs.count
//}
//
//solution(a: a)

//Given a rectangular matrix containing only digits, calculate the number of different 2 × 2 squares in it.

//let matrix = [[1, 2, 1],
//              [2, 2, 2],
//              [2, 2, 2],
//              [1, 2, 3],
//              [2, 2, 1]]
//
//func solution(matrix: [[Int]]) -> Int {
//var arrCheck = [[Int]]()
//    for i in 0 ..< matrix.count - 1 {
//        for j in 0 ..< matrix[0].count - 1 {
//            var element = [Int]()
//            element.append(matrix[i][j])
//            element.append(matrix[i][j + 1])
//            element.append(matrix[i + 1][j])
//            element.append(matrix[i + 1][j + 1])
//            if !arrCheck.contains(element) {
//                arrCheck.append(element)
//            }
//        }
//    }
//    return arrCheck.count
//}
//
//solution(matrix: matrix)

//A step(x) operation works like this: it changes a number x into x - s(x), where s(x) is the sum of x's digits. You like applying functions to numbers, so given the number n, you decide to build a decreasing sequence of numbers: n, step(n), step(step(n)), etc., with 0 as the last element.
//
//Building a single sequence isn't enough for you, so you replace all elements of the sequence with the sums of their digits (s(x)). Now you're curious as to which number appears in the new sequence most often. If there are several answers, return the maximal one.
//
//func solution(n: Int) -> Int {
//    var arrNum = [Int]()
//    var num = n
//    
//    while num > 0 {
//        var sX = String(num).map { Int(String($0))!}.reduce(0, +)
//        arrNum.append(sX)
//        num = num - sX
//    }
//    var arrRepeats = [Int]()
//    var arrAns = 0
//    var answer = 0
//    print(arrNum)
//    
//    for element in arrNum {
//        if !arrRepeats.contains(element) {
//            arrRepeats.append(element)
//            if arrNum.filter { $0 == element}.count >= arrAns {
//                arrAns = arrNum.filter { $0 == element}.count
//                answer = element
//                if element > answer {
//                    answer = element
//                }
//            }
//        }
//    }
//    return answer
//}
//
//solution(n: 88)
