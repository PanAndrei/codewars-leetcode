//: [Previous](@previous)

//You're a crossword fanatic, and have finally decided to try and create your own. However, you also love symmetry and good design, so you come up with a set of rules they should follow:
//
//the crossword must contain exactly four words;
//these four words should form four pairwise intersections;
//all words must be written either left-to-right or top-to-bottom;
//the area of the rectangle formed by empty cells inside the intersections isn't equal to zero.
//Given 4 words, find the number of ways to make a crossword following the above-described rules. Note that two crosswords which differ by rotation are considered different.
//

// не дорешал
//func solution(words: [String]) -> Int {
//    var count = 0
//    var newArr = [[String]]()
//
//    for word in words {
//        let newWord = word.map { String($0) }
//        newArr.append(newWord)
//    }
//
//    for _ in 1 ... 4 {
//        let first = newArr[0]
//        let second = newArr[1]
//        let third = newArr[2]
//        let foth = newArr[3]
//
//        for i in 0 ..< first.count {
//            var contact1 = 0
//            for j in 0 ..< second.count {
//                if first[i] == second[j] {
//                    contact1 = i
//                    if i < third.count {
//                    for n in 0 ..< third.count {
//                        if i > contact1 &&
//                    }
//                    } else {
//                        continue
//                    }
//            }
//        }
//
//    }
//
//    return count
//}
//
//// пересечение
//
//func checkHor(word1: String, word2: String) -> [Int] {
//    let word1 = word1.map { String($0) }
//    let word2 = word2.map { String($0) }
//    var cross = [Int]()
//    for i in 0 ..< word1.count {
//        for j in 0 ..< word2.count {
//            if word1[i] == word2[j] {
//                cross.append(i)
//            }
//        }
//    }
//    print(cross)
//    return cross
//}
//
//
//var words = ["crossword", "square", "formation", "something"]
//
//solution(words: words)
//checkHor(word1: words[0], word2: words[2])
//checkHor(word1: words[3], word2: words[2])
//checkHor(word1: words[0], word2: words[1])
//checkHor(word1: words[3], word2: words[1])


//// чужое
//    func solution(words: [String]) -> Int {
//        var count = 0
//        for i in 0..<4 {
//            let a = words[i].characters.map({String($0)})
//            for a1 in 0..<(a.count - 1) {
//                for j in 0..<4 {
//                    if j == i {
//                        continue
//                    }
//                    let b = words[j].characters.map({String($0)})
//                    for b2 in 1..<b.count {
//                        if b[b2] != a[a1] {
//                            continue
//                        }
//                        for b1 in 0..<(b2 - 1) {
//                            for k in 0..<4 {
//                                if k == i || k == j {
//                                    continue
//                                }
//                                let c = words[k].characters.map({String($0)})
//                                let d = words[6 - i - j - k].characters.map({String($0)})
//                                if b2 - b1 >= d.count {
//                                    continue
//                                }
//                                for c1 in 0..<(c.count - 1) {
//                                    if c[c1] != b[b1] {
//                                        continue
//                                    }
//                                    for c2 in (c1 + 2)..<c.count {
//                                        let a2 = a1 + (c2 - c1)
//                                        if a2 >= a.count {
//                                            continue
//                                        }
//                                        for d1 in 0..<d.count {
//                                            if d[d1] != c[c2] {
//                                                continue
//                                            }
//                                            let d2 = d1 + (b2 - b1)
//                                            if d2 >= d.count {
//                                                break
//                                            }
//                                            if a[a2] != d[d2] {
//                                                continue
//                                            }
//                                            count += 1
//                                        }
//                                    }
//                                }
//                            }
//                        }
//                    }
//                }
//            }
//        }
//        return count
//    }

//func solution(startTag: String) -> String {
//    var tag = startTag.components(separatedBy: " ").first ?? ""
//    tag += tag.contains(">") ? "" : ">"
//    let closingTag = tag.replacingOccurrences(of: "<", with: "</")
//    return closingTag
//}

// разобраться


//Given two filenames, check whether they form an unstable pair.

//func solution(filename1: String, filename2: String) -> Bool {
//    return [filename1, filename2].max()!.lowercased() != String([NSString(string: filename1).uppercased, NSString(string: filename2).uppercased].max()!).lowercased()
//}
//
//solution(filename1: "A", filename2: "z")

//func solution(filename1: String, filename2: String) -> Bool {
//    let before = filename1.compare(filename2)
//    let after = filename1.caseInsensitiveCompare(filename2)
//    return before != after
//}

//A ciphertext alphabet is obtained from the plaintext alphabet by means of rearranging some characters. For example "bacdef...xyz" will be a simple ciphertext alphabet where a and b are rearranged.
////
////A substitution cipher is a method of encoding where each letter of the plaintext alphabet is replaced with the corresponding (i.e. having the same index) letter of some ciphertext alphabet.
////
////Given two strings, check whether it is possible to obtain them from each other using some (possibly, different) substitution ciphers.
//
//func solution7(string1: String, string2: String) -> Bool {
//    let arr1 = string1.map { $0.asciiValue! }
//    let arr2 = string2.map { $0.asciiValue! }
//    print(arr1)
//    print(arr2)
//
//    for i in 0 ..< arr1.count - 2 {
//        if arr1[i] == arr2[i] {
//            continue
//        } else if abs(Int(arr1[i] - arr2[i])) != abs(Int(arr1[(i + 1)] - arr2[(i + 1)])) {
//            return false
//        }
//    }
//    return true
//}
//
////solution(string1: "abcd", string2: "acbd")
//
//func solution(string1: String, string2: String) -> Bool {
//    let arr1 = string1.map { $0.asciiValue! }
//    let arr2 = string2.map { $0.asciiValue! }
//
//
//    for i in 0 ... arr1.count - 2 {
//        if arr1[i] == arr2[i] {
//            continue
//        } else if abs(Int(arr1[i]) - Int(arr2[i])) != abs(Int(arr1[i + 1]) - Int(arr2[i + 1])) || abs(Int(arr1[i]) - Int(arr2[i])) != abs(Int(arr1[i - 1]) - Int(arr2[i - 1]))
//        {
//
//            return false
//        }
//    }
//    return true
//}
//
//solution(string1: "abcd", string2: "acbd")
//
//
//func solfution(string1: String, string2: String) -> Bool {
//    return Set(Array(zip(Array(string1).map { String($0) }, Array(string2).map { String($0) })).map { $0.0 + $0.1 }).count == Set(Array(string1)).count && Set(Array(string1)).count == Set(Array(string2)).count
//}

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

//Yesterday you found some shoes in the back of your closet. Each shoe is described by two values:
//
//type indicates if it's a left or a right shoe;
//size is the size of the shoe.
//Your task is to check whether it is possible to pair the shoes you found in such a way that each pair consists of a right and a left shoe of an equal size.
//
//var shoes = [[1,2],
//             [0,2],
//             [1,1],
//             [0,1],
//             [1,2],
//             [0,1]]
//
//var shoes2 = [[0,21],
//              [1,23],
//              [1,21],
//              [0,23]]
//
//func solution(shoes: [[Int]]) -> Bool {
//    var oldShoes = shoes
//
//big: for i in 0 ..< oldShoes.count {
//        let element = oldShoes[i]
//        for j in 0 ..< oldShoes.count {
//            let pair = oldShoes[j]
//            if element[0] != pair[0] && element[1] == pair[1] {
//                oldShoes[i] = [-1, -1]
//                oldShoes[j] = [-1, -1]
//                continue big
//            }
//        }
//    }
//
//    print(shoes)
//    print(oldShoes)
//    return oldShoes.filter{ $0 != [-1, -1]}.isEmpty
//}
//
//solution(shoes: shoes2)
//

// можно было лучше/
//главная проблема была - при удалении из массива - смещение индексов
//
//func solution(shoes: [[Int]]) -> Bool {
//    return shoes.filter(){$0[0]==0}.map {$0[1]}.sorted() == shoes.filter(){$0[0]==1}.map {$0[1]}.sorted()
//}


//Miss X has only two solution in her possession, both of which are old and miss a tooth or two. She also has many purses of different length, in which she carries the solution. The only way they fit is horizontally and without overlapping. Given teeth' positions on both solution, find the minimum length of the purse she needs to take them with her.
//
//It is guaranteed that there is at least one tooth at each end of the comb.
//It is also guaranteed that the total length of two strings is smaller than 32.
//Note, that the solution can not be rotated/reversed.

// работает но на одном из тестов ошибка (

//func solution(comb1: String, comb2: String) -> Int {
//    let max = [comb1.count, comb2.count].max()!
//    var result = [String]()
//    var answer = comb1.count + comb2.count
//    var c1 = comb1.map { String($0) }
//    c1.insert(contentsOf: Array(repeatElement("-", count: max)), at: 0)
//    c1 += Array(repeating: "-", count: comb2.count)
//    var c2 = comb2.map { String($0) }
//    c2.insert(contentsOf: Array(repeatElement("-", count: (max + comb1.count))), at: 0)
//
//big: for _ in 1 ... comb2.count * 2 {
//        for i in 0 ..< c1.count {
//            let element = c1[i] + c2[i]
//            if element == "**" {
//                c2.remove(at: 0)
//                c2.append("-")
//                result = []
//                continue big
//            } else {
//                result.append(element)
//            }
//        }
//    if result.filter{ String($0) != "--" }.count < answer {
//        answer = result.filter{ String($0) != "--" }.count
//    }
//
//    print(result)
//    c2.remove(at: 0)
//    c2.append("-")
//    result = []
//    }
//
//
//
//    return answer
//}
//
//let comb1 = "*.*"
//let comb2 = "*.*"
//
//solution(comb1: comb1, comb2: comb2)
//
//func solution(comb1: String, comb2: String) -> Int {
//  return min(c(comb1,comb2), c(comb2, comb1))
//}
//
//func c(_ comb1: String, _ comb2: String) -> Int {
//  let c1 = comb1.count
//  let c2 = comb2.count
//  var minCount =  c1 + c2
//  let a1 = Array(comb1)
//  let a2 = Array(comb2)
//
//  for pos in 1...c1 {
//    var fit = true
//    for i in pos..<min(c1, c2+pos) {
//      if a1[i]=="*" && a2[i-pos]=="*" {
//          fit = false
//          break
//      }
//    }
//    if fit {
//      minCount = c2 + pos
//      break
//    }
//  }
//
//  return max(minCount, c1, c2)
//}

//Define crossover operation over two equal-length strings A and B as follows:
//
//the result of that operation is a string of the same length as the input strings
//result[i] is either A[i] or B[i], chosen at random
//Given array of strings inputArray and a string result, find for how many pairs of strings from inputArray the result of the crossover operation over them may be equal to result.
//
//Note that (A, B) and (B, A) are the same pair. Also note that the pair cannot include the same element of the array twice (however, if there are two equal elements in the array, they can form a pair).

// работает но с парами что то плохо

//func subArrayCheck(arrBig: [String], arrSmall: [String]) -> Bool {
//    var arrBigC = arrBig
//    for element in arrSmall {
//        if let index = arrBigC.firstIndex(of: element) {
//            arrBigC.remove(at: index)
//        }
//    }
//    return arrBig.count - arrBigC.count == arrSmall.count
//}
//
//func solution(inputArray: [String], result: String) -> Int {
//    let resultCheck = result.map { String($0) }
//    var answer = 0
//    var chechedArrs = [String]()
//    var chechedArrs2 = [String]()
//
//    for i in 0 ..< inputArray.count {
//        if chechedArrs2.contains(inputArray[i]) {
//            continue
//        }
//        chechedArrs2.append(inputArray[i])
//        for j in 0 ..< inputArray.count {
//            if i == j {
//                continue
//            } else if !chechedArrs.contains(inputArray[j]) {
//                chechedArrs.append(inputArray[j])
//                let adding = inputArray[i].map { String($0) } + inputArray[j].map { String($0) }
//                if subArrayCheck(arrBig: adding, arrSmall: resultCheck) {
//                    answer += 1
//                }
//                chechedArrs = []
//            }
//        }
//        chechedArrs2 = []
//    }
//    return answer / 2
//}
//
//solution(inputArray: ["cbb",
//                      "aba",
//                      "aba",
//                      "bab"], result: "abb")


//func solution(inputArray: [String], result: String) -> Int {
//    var count = 0
//
//    for i in 0..<inputArray.count {
//        for j in i+1..<inputArray.count {
//            let s1 = inputArray[i]
//            let s2 = inputArray[j]
//            var isCross = true
//            for k in 0..<result.count {
//                if Array(result)[k] != Array(s1)[k] && Array(result)[k] != Array(s2)[k] {
//                    isCross = false
//                    break
//                }
//            }
//            if isCross {
//                count += 1
//            }
//        }
//    }
//
//    return count
//}
