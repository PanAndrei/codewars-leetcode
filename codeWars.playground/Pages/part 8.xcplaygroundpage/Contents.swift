//: [Previous](@previous)

import Foundation
import CoreFoundation
import Darwin

//Given integers a and b, determine whether the following pseudocode results in an infinite loop
//
//while a is not equal to b do
//  increase a by 1
//  decrease b by 1
//Assume that the program is executed on a virtual machine which can store arbitrary long numbers and execute forever.

//func solution(a: Int, b: Int) -> Bool {
//    if a == b {
//        return false
//    }
//    guard (b - a) > 1 else {
//        return true
//    }
//    return (a - b) % 2 != 0
//}
//
//solution(a: 10, b: 10)
//
//func solddution(a: Int, b: Int) -> Bool {
//   return (a > b) || (a % 2 != b % 2)
//}

//Consider an arithmetic expression of the form a#b=c. Check whether it is possible to replace # with one of the four signs: +, -, * or / to obtain a correct expression.

//func solution(a: Int, b: Int, c: Int) -> Bool {
//    if a + b == c {
//        return true
//    } else if a - b == c {
//        return true
//    } else if a * b == c {
//        return true
//    } else if Double(a) / Double(b) == Double(c) {
//        return true
//    }
//    return false
//}
//
//solution(a: 8, b: 3, c: 2)
//
//func solddution(a: Int, b: Int, c: Int) -> Bool {
//  return a+b==c || a-b==c || a*b==c || a==c*b
//}

//In tennis, the winner of a set is based on how many games each player wins. The first player to win 6 games is declared the winner unless their opponent had already won 5 games, in which case the set continues until one of the players has won 7 games.
//
//Given two integers score1 and score2, your task is to determine if it is possible for a tennis set to be finished with a final score of score1 : score2.

//func solution(score1: Int, score2: Int) -> Bool {
//    guard score2 != score1 else {
//        return false
//    }
//    if [score1, score2].max() == 6 && [score1, score2].min()! < 5 {
//        return true
//    } else if [score1, score2].max() == 7 && [score1, score2].min()! > 4 {
//        return true
//    }
//    return false
//}

//Once Mary heard a famous song, and a line from it stuck in her head. That line was "Will you still love me when I'm no longer young and beautiful?". Mary believes that a person is loved if and only if he/she is both young and beautiful, but this is quite a depressing thought, so she wants to put her belief to the test.
//
//Knowing whether a person is young, beautiful and loved, find out if they contradict Mary's belief.
//
//A person contradicts Mary's belief if one of the following statements is true:
//
//they are young and beautiful but not loved;
//they are loved but not young or not beautiful.


//func solution(young: Bool, beautiful: Bool, loved: Bool) -> Bool {
//return (young && beautiful && !loved) || (loved && (!young || !beautiful))
//}

//You just bought a public transit card that allows you to ride the Metro for a certain number of days.
//
//Here is how it works: upon first receiving the card, the system allocates you a 31-day pass, which equals the number of days in January. The second time you pay for the card, your pass is extended by 28 days, i.e. the number of days in February (note that leap years are not considered), and so on. The 13th time you extend the pass, you get 31 days again.
//
//You just ran out of days on the card, and unfortunately you've forgotten how many times your pass has been extended so far. However, you do remember the number of days you were able to ride the Metro during this most recent month. Figure out the number of days by which your pass will now be extended, and return all the options as an array sorted in increasing order.

//func solution(lastNumberOfDays: Int) -> [Int] {
//    switch lastNumberOfDays {
//    case 31: return [28, 30, 31]
//    case 30: return [31]
//    default: return [31]
//    }
//}
//
//func solution(lastNumberOfDays: Int) -> [Int] {
//    return lastNumberOfDays <= 30 ? [31] : [28, 30, 31]
//}


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

// & - AND комбинирует два бита двух чисел
// | - OR сравнивает биты двух чисел
// ~ - NOT инвертирует все битовые числа
// << -побитовый сдвиг


//You are given an array of up to four non-negative integers, each less than 256.
//
//Your task is to pack these integers into one number M in the following way:
//
//The first element of the array occupies the first 8 bits of M;
//The second element occupies next 8 bits, and so on.
//Return the obtained integer M.
//
//Note: the phrase "first bits of M" refers to the least significant bits of M - the right-most bits of an integer. For further clarification see the following example.


//
//func solutioddn(a: [Int]) -> Int {
//    var arrBinary = a.map {String(UInt8($0), radix: 2)}
//    var stringAnswer = ""
//
//    for i in 0 ..< arrBinary.count {
//        while arrBinary[i].count < 8 {
//            arrBinary[i].insert("0", at: arrBinary[i].startIndex)
//        }
//    }
//
//    stringAnswer = arrBinary.reversed().joined(separator: "")
//
//    return Int(stringAnswer, radix: 2)!
//}
//
//solution(a: [24, 85, 0])
//
//func solution(a: [Int]) -> Int {
//    var result = 0
//    for k in a.reversed() {
//        result <<= 8
//        result += k
//    }
//    return result
//}
//
//var kk = 0
//print(String(kk, radix: 2))
//var tt = kk << 8
//print(String(tt, radix: 2))
//tt += 0
//print(String(tt, radix: 2))
//tt <<= 8
//print(String(tt, radix: 2))
//tt += 85
//print(String(tt, radix: 2))
//tt <<= 8
//print(String(tt, radix: 2))
//tt += 24
//print(String(tt, radix: 2))


//You are given two numbers a and b where 0 ≤ a ≤ b. Imagine you construct an array of all the integers from a to b inclusive. You need to count the number of 1s in the binary representations of all the numbers in the array.

//func solutifon(a: Int, b: Int) -> Int {
//    var array = [Int]()
//    for element in a ... b {
//        array.insert(element, at: 0)
//    }
//    var stringAnswer = ""
//            for element in array {
//        stringAnswer += String(element, radix: 2)
//    }
//    return stringAnswer.map { $0 }.filter { $0 == "1"}.count
//}
//
//solutifon(a: 2, b: 7)
//solution(a: 2, b: 7)
//
//func solution(a: Int, b: Int) -> Int {
//var result = 0
//    for element in a ... b {
//        result <<= 4
//        result += element
//    }
//    print(result)
////    return String(result, radix: 2).map { $0 }.filter { $0 == "1"}.count
//    return String(result, radix: 2).map { $0 }.reduce(0, +)
//}


//Reverse the order of the bits in a given integer.

//var a : UInt8 = 97
//var b : Int = 97
//
//MemoryLayout.size(ofValue: a)
//
//a << 1
//~a
//a >> 1
//
//
//func soluddtion(a: Int) -> Int {
//    var binary = String(String(a, radix: 2).reversed())
//    return Int(binary, radix: 2)!
//}
//
//solution(a: 97)
//
//func solution(a: Int) -> Int {
//    var mirrorNumber = 0
//    var number = a
//    while number > 0 {
//       mirrorNumber <<= 1
//        if number%2 != 0 {
//            mirrorNumber |= 1
//        }
//        number >>= 1
//    }
//    return mirrorNumber
//}


//Implement the missing code, denoted by ellipses. You may not modify the pre-existing code.
//Presented with the integer n, find the 0-based position of the second rightmost zero bit in its binary representation (it is guaranteed that such a bit exists), counting from right to left.
//
//Return the value of 2position_of_the_found_bit.

// в лобешник решение

//func solution(n: Int) -> Int {
//  return Int(pow(Double(2), findSecondZero(n: n)))
//}
//
//func findSecondZero(n: Int) -> Double {
//    var x = 0
//    var y = 0
//    var t = 0
//    var z = n
//
//    while z > 1 {
//        if z % 2 == 0 {
//            x += 1
//            if x == 2 {
//                t = y
//                break
//            }
//        }
//        z /= 2
//        y += 1
//    }
//    return Double(t )
//}

//soddlution(n: 37)
//
//func solution(n: Int) -> Int {
//   return ~(n + (~n & (n+1))) & ((n + (~n & (n+1))) + 1)
//}
//
//var v = 37
//
//~(v + (~v & (v+1)))
//((v + (~v & (v+1))) + 1)
//
//~(v + (~v & (v+1))) & ((v + (~v & (v+1))) + 1)
//

//func soddlution(n: Int) -> Int {
//   return (((((n + 1) | n) + 1) | n) - n)
//}
//
//var t = 8
//t + 1
//(t + 1) | t
//((t + 1) | t) + 1
//(((t + 1) | t) + 1) | t
//((((t + 1) | t) + 1) | t) - t


//You're given an arbitrary 32-bit integer n. Take its binary representation, split bits into it in pairs (bit number 0 and 1, bit number 2 and 3, etc.) and swap bits in each pair. Then return the result as a decimal number.

//func solution(n: Int) -> Int {
//  return changeBits(m: n)
//}
//
//func changeBits(m: Int) -> Int {
//    var stringNum = String(m, radix: 2)
//    var arrNums = [String]()
//    if stringNum.count % 2 != 0 {
//        stringNum.insert("0", at: stringNum.startIndex)
//    }
//    var arr = stringNum.map { String($0) }
//    for i in 0 ..< arr.count - 1 {
//        if i % 2 == 0 {
//            var temp = ""
//            temp = arr[i]
//            arr[i] = arr[i + 1]
//            arr[i + 1] = temp
//        }
//    }
//    var finalStr = arr.joined()
//    return Int(finalStr, radix: 2)!
//}
//
//changeBits(m: 333)
//solution(n: 333)
//
//func solutioen(n: Int) -> Int {
//  return ( ((n & 0xAAAAAAAA) >> 1) | ((n & 0x55555555) << 1) )
//}
//
//Это просто совпадение, что шестнадцатеричный 0xaaaaaaaa представляет двоичный код с четными позициями, установленными как 1.
//
//Точно так же что-то столь же элегантное, как 0x55555555, представляет двоичный файл с нечетными позициями, установленными как 1?

//You're given two integers, n and m. Find position of the rightmost bit in which they differ in their binary representations (it is guaranteed that such a bit exists), counting from right to left.
//
//Return the value of 2position_of_the_found_bit (0-based).

// работает, но один из тестов не прошел
// скорее всего потому что большие числа не влезли в диапазон

//func solution(n: Int, m : Int) -> Int {
//  return find(n: n, m: m)
//}
//
//func find(n: Int, m: Int) -> Int {
//    var nBin = String(n, radix: 2).map { String($0)}
//    var mBin = String(m, radix: 2).map { String($0)}
//    var answer = 0
//
//    for i in 0 ..< [nBin.count, mBin.count].min()! {
//        if nBin[nBin.count - i - 1] != mBin[mBin.count - i - 1] {
//            answer = i
//            break
//        } else {
//            answer = [nBin.count, mBin.count].min()! + 1
//        }
//    }
//    return Int(pow(2.0, Double(answer)))
//}
//
//find(n: 7, m: 23)
//
//func solution(n: Int, m : Int) -> Int {
//  return (n ^ m) & -(n ^ m)
//}
//
//

//var a = 11
//var b = 13
//
//a ^ b
//-(a ^ b)
//(a ^ b) & -(a ^ b)


//You're given two integers, n and m. Find position of the rightmost pair of equal bits in their binary representations (it is guaranteed that such a pair exists), counting from right to left.
//
//Return the value of 2position_of_the_found_pair (0-based).

// опять в лоб
// опять один тест не прошел


//func solution(n: Int, m : Int) -> Int {
//  return find(n: n, m: m)
//}
//
//func find(n: Int, m: Int) -> Int {
//    var nBin = String(n, radix: 2).map { String($0)}
//    var mBin = String(m, radix: 2).map { String($0)}
//    var answer = 0
//
//    for i in 0 ..< [nBin.count, mBin.count].min()! {
//        if nBin[nBin.count - i - 1] == mBin[mBin.count - i - 1] {
//            answer = i
//            break
//        } else {
//            answer = [nBin.count, mBin.count].min()! + 1
//        }
//    }
//    return Int(pow(2.0, Double(answer)))
//}

//func solution(n: Int, m : Int) -> Int {
//  return ~(n ^ m) & ((n ^ m) + 1)
//}


