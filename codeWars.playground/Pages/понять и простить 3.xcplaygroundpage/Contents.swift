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

//erse the order of the bits in a given integer.

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

//solution(n: 37)
//
//func solution(n: Int) -> Int {
//   return ~(n + (~n & (n+1))) & ((n + (~n & (n+1))) + 1)
//}

//var v = 55
//~v
//(~v & (v+1))
//(v + (~v & (v+1)))
//~(v + (~v & (v+1)))
//
//~v
//(~v & (v+1))
//(v + (~v & (v+1)))
//(v + (~v & (v+1))) + 1
//
//~(v + (~v & (v+1)))
//((v + (~v & (v+1))) + 1)
//~(v + (~v & (v+1))) & ((v + (~v & (v+1))) + 1)



/* идея тут в том что мы ищем именно второе число с права
те в основании двойка
дальше мы находим позицию этой двойки
 ее позиция это и есть степень возведения
 а вот все что было до этого - не понятно 
*/

//for v in 1 ... 100 {
//    print(v, ((v + (~v & (v+1))) + 1), (((v + (~v & (v+1))) + 1) - v))
//}
//
//func soddlution(n: Int) -> Int {
//   return (((((n + 1) | n) + 1) | n) - n)
//}

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
// разные биты
//func solution(n: Int, m : Int) -> Int {
//  return (n ^ m) & -(n ^ m)
//}
//
// одинаковые биты
//func solution(n: Int, m : Int) -> Int {
//  return ~(n ^ m) & ((n ^ m) + 1)
//}

//Given integers n, l and r, find the number of ways to represent n as a sum of two integers A and B such that l ≤ A ≤ B ≤ r.

//func solution(n: Int, l: Int, r: Int) -> Int {
//    var set = Set<Int>()
//    for i in l ... r {
//        if (l...r).contains(n - i) {
//            set.insert((n - i))
//            print(i, (n - i))
//        }
//    }
//    print(set.count)
//    return ((set.count) % 2 == 0) ? (set.count / 2) : (((set.count / 2) + 1))
//}
//
//solution(n: 24, l: 8, r: 16)

// не понимаю как
//func solufdtion(n: Int, l: Int, r: Int) -> Int {
//    return max(0, min(n/2-l, r-n/2) + (n+1)%2)
//}
//
//solufdtion(n: 24, l: 8, r: 16)


//You are standing at a magical well. It has two positive integers written on it: a and b. Each time you cast a magic marble into the well, it gives you a * b dollars and then both a and b increase by 1. You have n magic marbles. How much money will you make?
//
//func solution(a: Int, b: Int, n: Int) -> Int {
//    var aa = a, bb = b
//    var result = 0
//    for _ in 0 ..< n {
//        result += aa * bb
//        aa += 1
//        bb += 1
//    }
//    return result
//}

// рекурсия
// изучить

//solutioxn(a: 1, b: 2, n: 2)
//
//func solution(a: Int, b: Int, n: Int) -> Int {
//
//    if (n > 0){
//        return (a * b) + solution(a+1,b: b+1,n: n-1)
//    }else{
//        return 0
//    }
//
//}

//Given an integer size, return array of length size filled with 1s.

//func solution(size: Int) -> [Int] {
//return Array(repeating: 1, count: size)
//}
//
//func solution(size: Int) -> [Int] {
//    return (1...size).map{ _ in 1 }
//}

//Given an array of integers, replace all the occurrences of elemToReplace with substitutionElem.

//func solution(inputArray: [Int], elemToReplace: Int, substitutionElem: Int) -> [Int] {
//    var arr = inputArray
//    for element in 0 ..< arr.count {
//        if arr[element] == elemToReplace {
//            arr[element] = substitutionElem
//        }
//    }
//    return arr
//}
//
//func solution(inputArray: [Int], elemToReplace: Int, substitutionElem: Int) -> [Int] {
//    return inputArray.map { $0 == elemToReplace ? substitutionElem : $0 }
//}


//Given an array arr, swap its first and last elements and return the resulting array.
//
//func solution(arr: [Int]) -> [Int] {
//    guard !arr.isEmpty else {
//        return arr
//    }
//    var arrSol = arr
//    var first = arr.first!
//    var last = arr.last!
//
//    arrSol[0] = last
//    arrSol[arr.count - 1] = first
//    return arrSol
//}
//
//solution(arr: [1,3,4,5,6,7])
//
//
//func solution(arr: [Int]) -> [Int] {
//    if (arr.count < 2) {return arr}
//    return [arr.last!] + arr.dropFirst().dropLast() + [arr.first!]
//}
