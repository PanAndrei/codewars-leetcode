//: [Previous](@previous)

import Foundation

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
