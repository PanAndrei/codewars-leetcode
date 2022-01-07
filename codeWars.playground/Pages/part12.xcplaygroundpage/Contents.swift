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
