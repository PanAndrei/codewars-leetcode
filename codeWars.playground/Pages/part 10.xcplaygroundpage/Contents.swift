//: [Previous](@previous)

import Darwin

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
