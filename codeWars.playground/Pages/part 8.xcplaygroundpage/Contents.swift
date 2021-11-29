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


func solution(young: Bool, beautiful: Bool, loved: Bool) -> Bool {
return (young && beautiful && !loved) || (loved && (!young || !beautiful))
}
