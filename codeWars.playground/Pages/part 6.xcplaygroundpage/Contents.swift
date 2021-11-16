//: [Previous](@previous)

import Foundation
import UIKit

//Determine if the given character is a digit or not.

//func solution(symbol: Character) -> Bool {
//    if Int(String(symbol)) == nil {
//        return false
//    } else {
//        return true
//    }
//}
//
//func solution(symbol: Character) -> Bool {
//    return symbol >= "0" && symbol <= "9"
//}


//Given a string, return its encoding defined as follows:
//
//First, the string is divided into the least possible number of disjoint substrings consisting of identical characters
//for example, "aabbbc" is divided into ["aa", "bbb", "c"]
//Next, each substring with length greater than one is replaced with a concatenation of its length and the repeating character
//for example, substring "bbb" is replaced by "3b"
//Finally, all the new strings are concatenated together in the same order and a new string is returned.

//let s = "aabbba "
//
//
//var sMap = s.map { String($0) }
//var arrayString : Array <String> = ["", "", "", "", ""]
//var j = 0
//for i in 0 ... sMap.count - 2 {
//    arrayString[j] += sMap[i]
//    if sMap[i + 1] != sMap[i] {
//        j += 1
//    }
//}
//
//arrayString
//var newArr : Array <String> = ["", "", "", "", ""]
//var h = 0
//
//for element in arrayString {
//    if element == "" {
//        break
//    }
//    else if element.count == 1 {
//        newArr[h] += element
//        h += 1
//    } else {
//        let elementCount = element.count
//        newArr[h] += String(elementCount) + element.suffix(1)
//        h += 1
//    }
//}
//
//newArr
//
//func solution(s: String) -> String {
//    var arrayString = Array(repeating: "", count: s.count)
//    var newSString = s + " "
//    var mapSString = newSString.map { String($0) }
//    var j = 0
//    var finalArr = arrayString
//    var x = 0
//    var stringFinal = ""
//
//    for i in 0 ... mapSString.count - 2 {
//        arrayString[j] += mapSString[i]
//        if mapSString[i + 1] != mapSString[i] {
//            j += 1
//        }
//    }
//
//    for element in arrayString {
//        if element == "" {
//            break
//        } else if element.count == 1 {
//            finalArr[x] += element
//            x += 1
//        } else {
//            finalArr[x] += String(element.count) + element.suffix(1)
//            x += 1
//        }
//    }
//
//    for element in finalArr {
//        stringFinal += element
//    }
//
//    return stringFinal
//}
//
//solution(s: "aabbbcccerffs")
