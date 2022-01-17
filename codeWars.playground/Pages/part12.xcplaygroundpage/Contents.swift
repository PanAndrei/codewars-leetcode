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

//Given a character, check if it represents an odd digit, an even digit or not a digit at all.

//func solution(symbol: Character) -> String {
//    if Int(String(symbol)) == nil {
//        return "not a digit"
//    } else if Int(String(symbol))! % 2 == 0 {
//        return "even"
//    } else {
//        return "odd"
//    }
//}
//
//solution(symbol: "f")

//Define an alphabet reflection as follows: a turns into z, b turns into y, c turns into x, ..., n turns into m, m turns into n, ..., z turns into a.
//
//Define a string reflection as the result of applying the alphabet reflection to each of its characters.
//
//Reflect the given string.

//let sym = "abc xyz"
//print(sym.map { $0.asciiValue })

//func solution(inputString: String) -> String {
//    let inputStr = inputString.map { $0.asciiValue! }
//    var string = ""
//
//    for element in inputStr {
//        if element <= 109 {
//            string.append(Character(UnicodeScalar(109 + (110 - element))))
//        } else {
//            string.append(Character(UnicodeScalar(110 - (element - 109))))
//        }
//    }
//    return string
//}
//
//solution(inputString: "name")
//
//func solution(inputString: String) -> String {
//    let asciis = inputString.utf8.map { 26 - ($0 - 96) + 1 + 96 }
//    return String(bytes: asciis, encoding: .utf8) ?? ""
//}


//Your Informatics teacher at school likes coming up with new ways to help you understand the material. When you started studying numeral systems, he introduced his own numeral system, which he's convinced will help clarify things. His numeral system has base 26, and its digits are represented by English capital letters - A for 0, B for 1, and so on.
//
//The teacher assigned you the following numeral system exercise: given a one-digit number, you should find all unordered pairs of one-digit numbers whose values add up to the number.



//func solution(number: Character) -> [String] {
//    var answer = [String]()
//    let asciiNum = number.asciiValue! - 65
//
//    for i in 0 ..< asciiNum / 2 + 1 {
//        let secondNum = asciiNum - i
//        var string = ""
//        string.append(Character(UnicodeScalar(i + 65)))
//        string += " + "
//        string.append(Character(UnicodeScalar(secondNum + 65)))
//        answer.append(string)
//    }
//    print(answer)
//    return answer
//}
//
//solution(number: "G")

//You've intercepted an encrypted message, and you are really curious about its contents. You were able to find out that the message initially contained only lowercase English letters, and was encrypted with the following cipher:
//
//Let all letters from 'a' to 'z' correspond to the numbers from 0 to 25, respectively.
//The number corresponding to the ith letter of the encrypted message is then equal to the sum of numbers corresponding to the first i letters of the initial unencrypted message modulo 26.
//Now that you know how the message was encrypted, implement the algorithm to decipher it.

//27 % 26
//
//func solution(message: String) -> String {
//    let asciiToalph =  message.map { ($0.asciiValue! - 97)}
//    print(asciiToalph)
//    var answer = ""
//    for i in 0 ..< asciiToalph.count {
//        let sum = (asciiToalph[0 ... i].reduce(0, +) % 26) + 97
//        answer.append(Character(UnicodeScalar(sum)))
//        print(answer)
//
//    }
//    print(answer)
//    return answer
//}
//
//solution(message: "taiaiaertkixquxjnfxxdh")
//
//
//func solution(message: String) -> String {
//
//    var sum = 0
//    var result = ""
//
//    for char in message.utf8 {
//        let value = Int(char - 97)
//        var diff = value - sum
//
//        if diff < 0 {
//            diff += 26
//        }
//
//        result += String(UnicodeScalar(diff + 97)!)
//        sum = value
//    }
//
//
//    return result
//}

//When you recently visited your little nephew, he told you a sad story: there's a bully at school who steals his lunch every day, and locks it away in his locker. He also leaves a note with a strange, coded message. Your nephew gave you one of the notes in hope that you can decipher it for him. And you did: it looks like all the digits in it are replaced with letters and vice versa. Digit 0 is replaced with 'a', 1 is replaced with 'b' and so on, with digit 9 replaced by 'j'.
//
//The note is different every day, so you decide to write a function that will decipher it for your nephew on an ongoing basis.

//let note = "you'll n4v4r 6u4ss 8t: cdja"
//
//func solution(note: String) -> String {
//    var newStr = note.map { String($0) }
//    var answer = ""
//
//    for i in 0 ..< newStr.count {
//        if (48 ... 57).contains(Character(newStr[i]).asciiValue!) {
//            newStr[i] = String(UnicodeScalar(Character(newStr[i]).asciiValue! + 49))
//        } else if (97 ... 106).contains(Character(newStr[i]).asciiValue!) {
//                newStr[i] = String(UnicodeScalar(Character(newStr[i]).asciiValue! - 49))
//            }
//        }
//
//    answer = newStr.joined(separator: "")
//
//    return answer
//}
//
//solution(note: note)

//Given two version strings composed of several non-negative decimal fields separated by periods ("."), both strings contain equal number of numeric fields. Return true if the first version is higher than the second version and false otherwise.
//
//The syntax follows the regular semver ordering rules:
//
//1.0.5 < 1.1.0 < 1.1.5 < 1.1.10 < 1.2.0 < 1.2.2
//< 1.2.10 < 1.10.2 < 2.0.0 < 10.0.0
//There are no leading zeros in any of the numeric fields, i.e. you do not have to handle inputs like 100.020.003 (it would instead be given as 100.20.3).

//func solution(ver1: String, ver2: String) -> Bool {
//    var answer = false
//    let verr1 = Array(ver1.components(separatedBy: ".").reversed()).map { Int($0)! }
//    let verr2 = Array(ver2.components(separatedBy: ".").reversed()).map { Int($0)! }
//    
//    for i in 0 ..< verr2.count {
//        if verr1[i] > verr2[i] {
//            answer = true
//        } else if verr1[i] < verr2[i] {
//            answer = false
//        } else {
//            continue
//        }
//    }
//    return answer
//}
//
//solution(ver1: "10", ver2: "9")

//Consider the following ciphering algorithm:
//
//For each character replace it with its code.
//Concatenate all of the obtained numbers.
//Given a ciphered string, return the initial one if it is known that it consists only of lowercase letters.
//
//Note: here the character's code means its decimal ASCII code, the numerical representation of a character used by most modern programming languages.

//func solution(cipher: String) -> String {
//    var answer = ""
//    let arrCiper = cipher.map { $0 }
//    var letter = ""
//
//    for i in 0 ..< arrCiper.count {
//        letter += String(arrCiper[i])
//        if (97 ... 122).contains(Int(letter)!) {
//            answer.append(Character(UnicodeScalar(Int(letter)!)!))
//            letter = ""
//        }
//    }
//    return answer
//}
//
//solution(cipher: "10197115121")

//An alphanumeric ordering of strings is defined as follows: each string is considered as a sequence of tokens, where each token is a letter or a number (as opposed to an isolated digit, as is the case in lexicographic ordering). For example, the tokens of the string "ab01c004" are [a, b, 01, c, 004]. In order to compare two strings, we'll first break them down into tokens and then compare the corresponding pairs of tokens with each other (i.e. compare the first token of the first string with the first token of the second string, etc).
//
//Here is how tokens are compared:
//
//If a letter is compared with another letter, the usual alphabetical order applies.
//A number is always considered less than a letter.
//When two numbers are compared, their values are compared. Leading zeros, if any, are ignored.
//If at some point one string has no more tokens left while the other one still does, the one with fewer tokens is considered smaller.
//
//If the two strings s1 and s2 appear to be equal, consider the smallest index i such that tokens(s1)[i] and tokens(s2)[i] (where tokens(s)[i] is the ith token of string s) differ only by the number of leading zeros. If no such i exists, the strings are indeed equal. Otherwise, the string whose ith token has more leading zeros is considered smaller.
//
//Here are some examples of comparing strings using alphanumeric ordering.
//
//"a" < "a1" < "ab"
//"ab42" < "ab000144" < "ab00144" < "ab144" < "ab000144x"
//"x11y012" < "x011y13"
//Your task is to return true if s1 is strictly less than s2, and false otherwise.

// не работает в полной мере
//
//func solution(s1: String, s2: String) -> Bool {
//    var string1 = s1.map { Int($0.asciiValue!) }
//    var string2 = s2.map { Int($0.asciiValue!) }
//    var sum1 = 0
//    var sum2 = 0
//
//    for i in 0 ..< string1.count {
//        if string1[i] == 48 {
//            string1[i] = 0
//        }
//    }
//
//    for i in 0 ..< string2.count {
//        if string2[i] == 48 {
//            string2[i] = 0
//        }
//    }
//
//    var answer: Bool
//
//    if string1.reduce(0, +) < string2.reduce(0, +) || string1.count < string2.count {
//        answer = true
//    } else {
//        answer = false
//    }
//
//    return answer
// }
//
//solution(s1: "ab000144", s2: "x11y012")


//Given an array of 2k integers (for some integer k), perform the following operations until the array contains only one element:
//
//On the 1st, 3rd, 5th, etc. iterations (1-based) replace each pair of consecutive elements with their sum;
//On the 2nd, 4th, 6th, etc. iterations replace each pair of consecutive elements with their product.
//After the algorithm has finished, there will be a single element left in the array. Return that element.
//
//func sumPairs(arr: [Int]) -> [Int] {
//    var newArr = [Int]()
//    var step = 0
//    for i in 0 ..< arr.count - 1 {
//        if arr.count < 2 {
//            return arr
//        }
//        if step + 1 > arr.count - 1 {
//            return newArr
//        } else {
//            newArr.append(arr[step] + arr[step + 1])
//            step += 2
//        }
//    }
//    return newArr
//}
//
//func proPairs(arr: [Int]) -> [Int] {
//    var newArr = [Int]()
//    var step = 0
//    for i in 0 ..< arr.count - 1 {
//        if arr.count < 2 {
//            return arr
//        }
//        if step + 1 > arr.count - 1 {
//            return newArr
//        } else {
//            newArr.append(arr[step] * arr[step + 1])
//            step += 2
//        }
//    }
//    return newArr
//}
//
//
//
//func solution(inputArray: [Int]) -> Int {
//    var newInput = inputArray
//
//    while newInput.count > 1 {
//        newInput = sumPairs(arr: newInput)
//        if newInput.count != 1 {
//        newInput = proPairs(arr: newInput)
//        }
//    }
//    return newInput[0]
//}
//
//solution(inputArray: [1, 2, 3, 4, 5, 6, 7, 8])
