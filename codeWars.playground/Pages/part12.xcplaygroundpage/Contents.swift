//: [Previous](@previous)

import Foundation

//Given a rectangular matrix of characters, add a border of asterisks(*) to it.

//func solution(picture: [String]) -> [String] {
//    var starsString = String(Array(repeatElement("*", count: picture[0].count + 2)))
//    var newArr = picture
//    for i in 0 ..< picture.count {
//        newArr[i] = "*" + newArr[i] + "*"
//    }
//    newArr.insert(starsString, at: 0)
//    newArr.append(starsString)
//    print(newArr)
//    return newArr
//}
//
//solution(picture: ["abc", "ded"])

//N candles are placed in a row, some of them are initially lit. For each candle from the 1st to the Nth the following algorithm is applied: if the observed candle is lit then states of this candle and all candles before it are changed to the opposite. Which candles will remain lit after applying the algorithm to all candles in the order they are placed in the line?

//func solution(a: [Int]) -> [Int] {
//    var newArr = a
//    for i in 0 ..< newArr.count {
//        let slicedArr = newArr[(i) ... (newArr.count - 1)]
//        print(slicedArr)
//        let numFired = slicedArr.filter { $0 == 1}.count
//        if numFired % 2 == 0 {
//            continue
//        } else {
//            if newArr[i] == 1 {
//                newArr[i] = 0
//            } else {
//                newArr[i] = 1
//            }
//        }
//    }
//    return newArr
//}
//
//solution(a: [1, 1, 1, 1, 1])

//Timed Reading is an educational tool used in many schools to improve and advance reading skills. A young elementary student has just finished his very first timed reading exercise. Unfortunately he's not a very good reader yet, so whenever he encountered a word longer than maxLength, he simply skipped it and read on.
//
//Help the teacher figure out how many words the boy has read by calculating the number of words in the text he has read, no longer than maxLength.
//Formally, a word is a substring consisting of English letters, such that characters to the left of the leftmost letter and to the right of the rightmost letter are not letters.

//func solution(maxLength: Int, text: String) -> Int {
//    var text = text.components(separatedBy: CharacterSet.letters.inverted).filter { $0 != "" }
//    return text.filter { $0.count <= maxLength}.count
//}
//
//solution(maxLength: 4, text: "The Fox asked the stork, 'How is the soup?'")

//Elections are in progress!
//
//Given an array of the numbers of votes given to each of the candidates so far, and an integer k equal to the number of voters who haven't cast their vote yet, find the number of candidates who still have a chance to win the election.
//
//The winner of the election must secure strictly more votes than any other candidate. If two or more candidates receive the same (maximum) number of votes, assume there is no winner at all.

//func solution(votes: [Int], k: Int) -> Int {
//    if k < 1 && votes.filter { $0 == votes.max()! }.count > 1 {
//        return 0
//    } else if k < 1 && votes.filter { $0 == votes.max()! }.count > 0 {
//        return 1
//    }
//    return votes.map { $0 + k }.filter { $0 > votes.max()! }.count
//}
//
//solution(votes: [5, 1, 3, 4, 1], k: 0)

//Given a positive integer number and a certain length, we need to modify the given number to have a specified length. We are allowed to do that either by cutting out leading digits (if the number needs to be shortened) or by adding 0s in front of the original number.

//func solution(number: Int, width: Int) -> String {
//    var tempString = String(repeating: "0", count: width).map { $0 }
//    if width < String(number).count {
//        for i in 0 ..< width {
//            tempString[width - 1 - i] = String(number).map { $0 }[String(number).count - 1 - i]
//        }
//    } else {
//        for i in 0 ..< String(number).count {
//            tempString[width - 1 - i] = String(number).map { $0 }[String(number).count - 1 - i]
//        }
//    }
//    return String(tempString)
//}
//
//solution(number: 1234, width: 5)


//Two arrays are called similar if one can be obtained from another by swapping at most one pair of elements in one of the arrays.
//
//Given two arrays a and b, check whether they are similar.

//func solution(a: [Int], b: [Int]) -> Bool {
//    guard a != b else { return true }
//    guard Set(a) == Set(b) && a.reduce(0, +) == b.reduce(0, +) else { return false }
//    var count = 0
//
//    for i in 0 ..< a.count {
//        if a[i] != b[i] {
//            count += 1
//        }
//        if count > 2 {
//            return false
//        }
//    }
//    return true
//}
//
//solution(a: [1, 4, 2, 5, 3, 7, 4, 8, 4, 2, 25], b: [1, 4, 2, 5, 3, 3, 7, 8, 4, 2, 25])
//
//let a = [1, 4, 2, 5, 3, 7, 4, 8, 4, 2, 25]
//let b = [1, 4, 2, 5, 3, 3, 7, 8, 4, 2, 25]
//
//a == b
//Set(a) == Set(b)

//You have a long strip of paper with integers written on it in a single line from left to right. You wish to cut the paper into exactly three pieces such that each piece contains at least one integer and the sum of the integers in each piece is the same. You cannot cut through a number, i.e. each initial number will unambiguously belong to one of the pieces after cutting. How many ways can you do it?
//
//It is guaranteed that the sum of all elements in the array is divisible by 3.

//func solution(a: [Int]) -> Int {
//    let num = a.reduce(0, +) / 3
//    let count = 0
//
//    for i in 0 ..< a.count {
//
//    }
//
//    return count
//}
//
//solution(a: [0, -1, 0, -1, 0, -1])
////solution(a: [-1, 1, -1, 1, -1, 1, -1, 1])
//
//func solusstion(a: [Int]) -> Int {
//    var sum = 0
//    for num in a {
//        sum += num
//    }
//    var temp = sum%3
//    if !(temp==0) {
//        return 0
//    }
//    sum /= 3
//    var cut1 = 0, cut2 = 0, count = 0
//    var sum1 = 0, sum2 = 0
//    for cut1 in 0..<a.count-2 {
//        sum1 += a[cut1]
//        if sum1 == sum {
//            sum2 = 0
//            for cut2 in (cut1 + 1)..<a.count-1 {
//                sum2 += a[cut2]
//                if sum2 == sum {
//                    count += 1
//                }
//            }
//        }
//    }
//    return count
//}
