//: [Previous](@previous)

import Darwin
import Foundation

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

//solution(n: 155)
//
//func solution(n: Int) -> Bool {
//    if n == 1 { return true }
//
//    let max = Int(sqrt(Double(n)))
//    for i in stride(from: max, through: 2, by: -1) {
//        var v = i
//        while (v < n) { v *= i }
//        if (v == n) { return true }
//    }
//
//    return false
//}

//Find the number of ways to express n as sum of some (at least two) consecutive positive integers.

//func solution(n: Int) -> Int {
//    var count = 0
//    var start = 0
//    for i in 1 ... n {
//        start = i
//        var result = start
//        for j in 1 ... n {
//            result += start + j
//            if result == n {
//                count += 1
//                break
//            } else if result > n {
//                break
//            }
//        }
//    }
//    return count
//}
//
//solution(n: 9)

//Consider a sequence of numbers a0, a1, ..., an, in which an element is equal to the sum of squared digits of the previous element. The sequence ends once an element that has already been in the sequence appears again.
//
//Given the first element a0, find the length of the sequence.

//func solution(a0: Int) -> Int {
//    var array: Array<Int> = [a0]
//    while array.count == Set(array).count {
//        let nextNum = String(array.last!).map{ Int(String($0))! }.reduce(0) { (total, number) in
//            total + Int(pow(Double(number), 2)) }
//        array.append(nextNum)
//    }
//    return array.count
//}
//
//solution(a0: 103)

//You work in a company that prints and publishes books. You are responsible for designing the page numbering mechanism in the printer. You know how many digits a printer can print with the leftover ink. Now you want to write a function to determine what the last page of the book is that you can number given the current page and numberOfDigits left. A page is considered numbered if it has the full number printed on it (e.g. if we are working with page 102 but have ink only for two digits then this page will not be considered numbered).
//
//It's guaranteed that you can number the current page, and that you can't number the last one in the book.

//func solution(current: Int, numberOfDigits: Int) -> Int {
//    var nubbersLeft = numberOfDigits - String(current).map { $0 }.count
//    var newcurrent = current
//
//    while nubbersLeft >= String(newcurrent).map { $0 }.count  {
//        newcurrent += 1
//        nubbersLeft -= String(newcurrent).map { $0 }.count
//    }
//    return newcurrent
//}
//
//solution(current: 9, numberOfDigits: 4)
//

//Let's say that number a feels comfortable with number b if a ≠ b and b lies in the segment [a - s(a), a + s(a)], where s(x) is the sum of x's digits.
//
//How many pairs (a, b) are there, such that a < b, both a and b lie on the segment [l, r], and each number feels comfortable with the other (so a feels comfortable with b and b feels comfortable with a)?
//
//func solution(l: Int, r: Int) -> Int {
//    var arr = Array(repeating: Array(repeating: 0, count: 2), count: (r - l + 1))
//    var count = 0
//    var result = 0
//
//    for i in l ... r {
//        arr[count].append(findRangeMin(num: i))
//        arr[count].append(findRangeMax(num: i))
//        arr[count].removeFirst()
//        arr[count].removeFirst()
//        count += 1
//    }
//
//    for i in 0 ..< arr.count - 1 {
//        for j in 1 ..< arr.count {
//            guard i + j <= arr.count - 1 else {
//                continue
//            }
//            if (arr[i + j][0] ... arr[i + j][1]).contains((arr[i][0] + arr[i][1]) / 2) &&
//                (arr[i][0] ... arr[i][1]).contains((arr[i + j][0] + arr[i + j][1]) / 2) {
//                result += 1
//            }
//        }
//    }
//    return result
//}
//
//func findRangeMin (num: Int) -> Int {
//    return num - String(num).map { Int(String($0))! }.reduce(0, +)
//}
//
//func findRangeMax (num: Int) -> Int {
//    return num + String(num).map { Int(String($0))! }.reduce(0, +)
//}
//
//solution(l: 10, r: 12)
//
//// как по другому сумму цифр брать
//// можно было проще без массивов
//
//func getDigitsSum() -> Int {
//   var sum = 0
//   var num = self
//
//   while num > 0 {
//       let x = num % 10
//       sum += x
//       num = num / 10
//   }
//
//   return sum
//   }

//We define the weakness of number x as the number of positive integers smaller than x that have more divisors than x.
//
//It follows that the weaker the number, the greater overall weakness it has. For the given integer n, you need to answer two questions:
//
//what is the weakness of the weakest numbers in the range [1, n]?
//how many numbers in the range [1, n] have this weakness?
//Return the answer as an array of two elements, where the first element is the answer to the first question, and the second element is the answer to the second question.
//
//extension Int {
//    func getDivisorsNum() -> Int {
//        var sum = 0
//        let num = self
//        
//        for i in 1 ... num{
//            if num % i == 0 {
//                sum += 1
//            }
//        }
//        return sum
//    }
//}
//
//func moreThanIt(arr: [Int], num: Int) -> Int {
//    return arr.filter { $0 > num }.count
//}
//
//func solution(n: Int) -> [Int] {
//    var arrDivisors = [Int]()
//    var weakness = [Int]()
//    var answer = [Int]()
//    
//    for i in 1 ... n {
//        arrDivisors.append(i.getDivisorsNum())
//        guard i > 2 else {
//            weakness.append(0)
//            continue
//        }
//        var arr = Array(arrDivisors[0 ... (i - 2)])
//        var num = arrDivisors[i - 1]
//        weakness.append(moreThanIt(arr: arr, num: num))
//    }
//    let max = weakness.max()!
//    answer.append(max)
//    answer.append(weakness.filter { $0 == max }.count)
//    return answer
//}
//
//solution(n: 9)


//A rectangle with sides equal to even integers a and b is drawn on the Cartesian plane. Its center (the intersection point of its diagonals) coincides with the point (0, 0), but the sides of the rectangle are not parallel to the axes; instead, they are forming 45 degree angles with the axes.
//
//How many points with integer coordinates are located inside the given rectangle (including on its sides)?

//func solution(a: Int, b: Int) -> Int {
//    var total = 0
//    var numA = 0
//    var numB = 0
//
//    numA = Int(Double(a) / sqrt(2)) + 1
//    numB = Int(Double(b) / sqrt(2)) + 1
//
//    total = (numA * numB) + (numA - 1) * (numB - 1)
//
//    return total % 2 == 0 ? total - 1 : total
//}
//
//solution(a: 8, b: 6)
//
//func solutionn(a: Int, b: Int) -> Int {
//    let a = floor(Float(a) / 2 / sqrt(2.0) * 2), b = floor(Float(b) / 2 / sqrt(2.0) * 2)
//    let s = Int(a * b + (a + 1) * (b + 1))
//    return s - (s - 1) % 2 * 1
//}

//You're a crossword fanatic, and have finally decided to try and create your own. However, you also love symmetry and good design, so you come up with a set of rules they should follow:
//
//the crossword must contain exactly four words;
//these four words should form four pairwise intersections;
//all words must be written either left-to-right or top-to-bottom;
//the area of the rectangle formed by empty cells inside the intersections isn't equal to zero.
//Given 4 words, find the number of ways to make a crossword following the above-described rules. Note that two crosswords which differ by rotation are considered different.
//

// не дорешал
//func solution(words: [String]) -> Int {
//    var count = 0
//    var newArr = [[String]]()
//
//    for word in words {
//        let newWord = word.map { String($0) }
//        newArr.append(newWord)
//    }
//
//    for _ in 1 ... 4 {
//        let first = newArr[0]
//        let second = newArr[1]
//        let third = newArr[2]
//        let foth = newArr[3]
//
//        for i in 0 ..< first.count {
//            var contact1 = 0
//            for j in 0 ..< second.count {
//                if first[i] == second[j] {
//                    contact1 = i
//                    if i < third.count {
//                    for n in 0 ..< third.count {
//                        if i > contact1 &&
//                    }
//                    } else {
//                        continue
//                    }
//            }
//        }
//
//    }
//
//    return count
//}
//
//// пересечение
//
//func checkHor(word1: String, word2: String) -> [Int] {
//    let word1 = word1.map { String($0) }
//    let word2 = word2.map { String($0) }
//    var cross = [Int]()
//    for i in 0 ..< word1.count {
//        for j in 0 ..< word2.count {
//            if word1[i] == word2[j] {
//                cross.append(i)
//            }
//        }
//    }
//    print(cross)
//    return cross
//}
//
//
//var words = ["crossword", "square", "formation", "something"]
//
//solution(words: words)
//checkHor(word1: words[0], word2: words[2])
//checkHor(word1: words[3], word2: words[2])
//checkHor(word1: words[0], word2: words[1])
//checkHor(word1: words[3], word2: words[1])


//// чужое
//    func solution(words: [String]) -> Int {
//        var count = 0
//        for i in 0..<4 {
//            let a = words[i].characters.map({String($0)})
//            for a1 in 0..<(a.count - 1) {
//                for j in 0..<4 {
//                    if j == i {
//                        continue
//                    }
//                    let b = words[j].characters.map({String($0)})
//                    for b2 in 1..<b.count {
//                        if b[b2] != a[a1] {
//                            continue
//                        }
//                        for b1 in 0..<(b2 - 1) {
//                            for k in 0..<4 {
//                                if k == i || k == j {
//                                    continue
//                                }
//                                let c = words[k].characters.map({String($0)})
//                                let d = words[6 - i - j - k].characters.map({String($0)})
//                                if b2 - b1 >= d.count {
//                                    continue
//                                }
//                                for c1 in 0..<(c.count - 1) {
//                                    if c[c1] != b[b1] {
//                                        continue
//                                    }
//                                    for c2 in (c1 + 2)..<c.count {
//                                        let a2 = a1 + (c2 - c1)
//                                        if a2 >= a.count {
//                                            continue
//                                        }
//                                        for d1 in 0..<d.count {
//                                            if d[d1] != c[c2] {
//                                                continue
//                                            }
//                                            let d2 = d1 + (b2 - b1)
//                                            if d2 >= d.count {
//                                                break
//                                            }
//                                            if a[a2] != d[d2] {
//                                                continue
//                                            }
//                                            count += 1
//                                        }
//                                    }
//                                }
//                            }
//                        }
//                    }
//                }
//            }
//        }
//        return count
//    }


//Given a string, enclose it in round brackets.

//func solution(inputString: String) -> String {
//return "(" + inputString + ")"
//}

//Proper nouns always begin with a capital letter, followed by small letters.
//
//Correct a given proper noun so that it fits this statement.


//let a = "a"
//let A = "A"
//97
//122
//65
//90
//
//Character(a).asciiValue
//Character(A).asciiValue
//
//func solution(noun: String) -> String {
//    var arr = noun.map { $0 }
//    var newArr = [String]()
//    var answer = ""
//
//    for i in 0 ..< arr.count {
//        if i == 0 {
//            if (97 ... 122).contains(arr[i].asciiValue!) {
//                arr[i] = Character(UnicodeScalar(arr[i].asciiValue! - 32))
//            }
//        } else {
//            if (65 ... 90).contains(arr[i].asciiValue!) {
//                arr[i] = Character(UnicodeScalar(arr[i].asciiValue! + 32))
//            }
//        }
//    }
//    newArr = arr.map { String($0) }
//    answer = newArr.joined(separator: "")
//
//    return answer
//}

//solution(noun: "ffHHfbf")

// этих методов уже нет
//func solution(noun: String) -> String {
//    let s = noun.lowercased()
//
//    let f = String(s.characters.prefix(1)).capitalized
//    let o = String(s.characters.dropFirst())
//    return f + o
//}

//var gg = "HHnnnKhuh"
//
//NSString(string: gg).uppercased
//NSString(string: gg).lowercased
//NSString(string: gg).capitalized


//Determine whether the given string can be obtained by one concatenation of some string to itself.

//func solution(inputString: String) -> Bool {
//    let indexR = inputString.index(inputString.startIndex, offsetBy: (inputString.count / 2 - 1))
//    let newStr = inputString[inputString.startIndex ... indexR]
//    return (newStr + newStr) == inputString
//}
//
//solution(inputString: "tandemtandem")
