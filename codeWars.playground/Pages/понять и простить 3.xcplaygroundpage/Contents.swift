//: [Previous](@previous)

import Foundation

//Given a divisor and a bound, find the largest integer N such that:
//
//N is divisible by divisor.
//N is less than or equal to bound.
//N is greater than 0.
//It is guaranteed that such a number exists.

//func solution(divisor: Int, bound: Int) -> Int {
//var answer = bound
//    while answer % divisor != 0 {
//        answer -= 1
//    }
//    return answer
//}
//
//solution(divisor:3, bound: 10)
//
//func soldution(divisor: Int, bound: Int) -> Int {
//    return bound - bound%divisor
//}

//One night you go for a ride on your motorcycle. At 00:00 you start your engine, and the built-in timer automatically begins counting the length of your ride, in minutes. Off you go to explore the neighborhood.
//
//When you finally decide to head back, you realize there's a chance the bridges on your route home are up, leaving you stranded! Unfortunately, you don't have your watch on you and don't know what time it is. All you know thanks to the bike's timer is that n minutes have passed since 00:00.
//
//Using the bike's timer, calculate the current time. Return an answer as the sum of digits that the digital timer in the format hh:mm would show.

//func solution(n: Int) -> Int {
//var array = [Int]()
//    array.append(n / 60)
//    array.append(n % 60)
//    return array[0] / 10 + array[0] % 10 + array[1] / 10 + array[1] % 10
//}
//
//solution(n: 808)
//
//func solutffion(n: Int) -> Int {
//    return (n / 60) / 10 + (n / 60) % 10 + (n % 60) / 10 + (n % 60) % 10
//}

//You're given three integers, a, b and c. It is guaranteed that two of these integers are equal to each other. What is the value of the third integer?

//func solution(a: Int, b: Int, c: Int) -> Int {
//    return a == b ? c : (a == c ? b : a)
//}
//
//func soludtion(a: Int, b: Int, c: Int) -> Int {
//    /// ^ XOR operator
//  return a^b^c
//}

//let a = 10
//let aa = String(a, radix: 2)
//let bb = ~Int(aa)!
//let cc = "1010"
//let b = String(Int(aa)!, radix: 10)
//let c = String(Int(cc)!, radix: 10, uppercase: false)
//
//let dd = "1010"
//let d = Int(dd, radix: 2)!


//In order to stop the Mad Coder evil genius you need to decipher the encrypted message he sent to his minions. The message contains several numbers that, when typed into a supercomputer, will launch a missile into the sky blocking out the sun, and making all the people on Earth grumpy and sad.
//
//You figured out that some numbers have a modified single digit in their binary representation. More specifically, in the given number n the kth bit from the right was initially set to 0, but its current value might be different. It's now up to you to write a function that will change the kth bit of n back to 0.

// тупо в лоб и не работает на  маленьких числах
//func solutiodn(n: Int, k: Int) -> Int {
//    var binaryInteger = String(n, radix: 2)
//    print(binaryInteger)
//    var binaryArr = binaryInteger.map { Int(String($0))! }
//    print(binaryArr)
//    if binaryArr[binaryArr.count - k] == 0 {
//        return n
//    } else {
//        binaryArr[binaryArr.count - k] = 0
//    }
//    var stringResult = ""
//    for element in binaryArr {
//        stringResult += String(element)
//    }
//    var intResult = Int(stringResult, radix: 2)
//    print(intResult)
//    return intResult!
//}
//
//solutiodn(n: 33 , k: 3)

//var binary = String(8, radix: 2)
//print (binary)
//1 << 2
//~(1 << 2)
//
//func solution(n: Int, k: Int) -> Int {
//    return n & (~(1<<(k - 1)))
//}
//
//solution(n: 37, k: 3)
