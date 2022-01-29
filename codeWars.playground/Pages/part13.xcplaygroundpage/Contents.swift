//: [Previous](@previous)

import Foundation

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
//You're given a substring s of some cyclic string. What's the length of the smallest possible string that can be concatenated to itself many times to obtain this cyclic string?

//For s = "cabca", the output should be
//solution(s) = 3.
//
//"cabca" is a substring of a cycle string "abcabcabcabc..." that can be obtained by concatenating "abc" to itself. Thus, the answer is 3.



//func checkSubArr(arrBig: [String], subArr: [String]) -> Bool {
//    for i in 0 ..< subArr.count {
//        if arrBig[i] != subArr[i] {
//            return false
//        }
//    }
//    return true
//}
//
//// не выявляет такие случаи как solution(s: "aab")
//
//func solution(s: String) -> Int {
//    let arr = s.map { String($0) }
//    var answer = 1
//
//    for i in 0 ..< arr.count {
//        let slice = Array(arr[0 ... i])
//        let upperBound = (i + answer) < (arr.count - 1) ? (i + answer) : (arr.count - 1)
//        if i == arr.count - 1 {
//            return arr.count
//        }
//        let sub = Array(arr[answer ... upperBound])
//        if checkSubArr(arrBig: slice, subArr: sub) {
//            return answer
//        } else {
//            answer += 1
//        }
//    }
//    return answer
//}

//solution(s: "cabca")
//solution(s: "aab")

//perfet

//func solution(s: String) -> Int {
//    var newStr = s.map { String($0) }
//    var step = s.count
//    var answers = [Int]()
//    var answer = 0
//
//    for i in 0 ..< newStr.count {
//        let cycle = newStr + Array(newStr[i ... newStr.count - 1])
//        if i > 0 {
//            if cycle[0 ... step - 1] == cycle[step ... step * 2 - 1] &&
//               cycle[1 ... step]     == cycle[step + 1 ... step * 2]  {
//                answer = step
//                answers.append(answer)
//                step -= 1
//            } else {
//                step -= 1
//            }
//        } else {
//            step -= 1
//        }
//    }
//
//        answer = answers.filter { $0 > 0 }.min() ?? s.count
//
//    return answer
//}
//
//solution(s: "abababaabababa")
//

// а как надо было
//func solution(s: String) -> Int {
//    if Set(s).count == 1 { return 1 }
//    var result = s.count
//    for i in 0..<s.count {
//        for j in i..<s.count {
//            let sub = String(Array(s)[i...j])
//            let cyclic = Array(repeating: sub, count: 5).reduce("", +)
//            if cyclic.contains(s) && sub.count < result {
//                print(cyclic)
//                print(s)
//                result = sub.count
//            }
//        }
//    }
//
//    return result
//}
//
//solution(s: "abababaabababa")
//
//
//
////Consider a string containing only letters and whitespaces. It is allowed to replace some (possibly, none) whitespaces with newline symbols to obtain a multiline text. Call a multiline text beautiful if and only if each of its lines (i.e. substrings delimited by a newline character) contains an equal number of characters (only letters and whitespaces should be taken into account when counting the total while newline characters shouldn't). Call the length of the line the text width.
////
////Given a string and some integers l and r (l ≤ r), check if it's possible to obtain a beautiful text from the string with a text width that's within the range [l, r].
//
//// очень оригинально но тесты не проходит
//
//func solution(inputString: String, l: Int, r: Int) -> Bool {
//    var arrChars = inputString.map { $0.asciiValue! }
//    var arrSpaces = [Int]()
//    var arrCheck = [Int]()
//    
//    arrChars.append(UInt8(32))
//    
//    for i in 0 ..< arrChars.count {
//        if arrChars[i] == UInt8(32) {
//            arrSpaces.append(i + 1)
//        }
//    }
//        
//    for element in (l + 1) ... (r + 1) {
//        let tempArr = arrSpaces
//        let newArr = tempArr.map { $0 % element }
//        if newArr.last == 0 && newArr.filter({ $0 == 0}).count > 1 {
//            arrCheck = tempArr.filter({ $0 % element == 0}).map { $0 / element }
//        }
//    }
//        
//    if arrCheck.isEmpty {
//        return false
//    }
//    
//    for i in 0 ..< arrCheck.count - 1 {
//        if arrCheck[i + 1] - arrCheck[i] != 1 {
//            return false
//        }
//    }
//    
//    return true
//}
//
//let check = "abc def ghi"
//
//solution(inputString: check, l: 4, r: 10)
//solution(inputString: "aa aa aaaaa aaaaa aaaaa", l: 6, r: 11)
//solution(inputString: "Look at this example of a correct text", l: 5, r: 15)
//
//// а это работает
//func solution(inputString: String, l: Int, r: Int) -> Bool {
//    let arr = Array(inputString)
//    for i in l...r {
//        if arr.count % (i + 1) == i {
//            var beautiful = true
//            for j in 0...((arr.count + 1) / (i + 1)) - 2  {
//                if arr[(j+1)*(i+1)-1] != " " {
//                    beautiful = false
//                }
//            }
//            
//            if beautiful {
//                return true
//            }
//        }
//    }
//    
//    return false
//}


//It's Christmas time! To share his Christmas spirit with all his friends, the young Christmas Elf decided to send each of them a Christmas e-mail with a nice Christmas tree. Unfortunately, Internet traffic is very expensive in the North Pole, so instead of sending an actual image he got creative and drew the tree using nothing but asterisks ('*' symbols). He has given you the specs (see below) and your task is to write a program that will generate trees following the spec and some initial parameters.
//
//Here is a formal definition of how the tree should be built, but before you read it the Elf HIGHLY recommends first looking at the examples that follow:
//
//Each tree has a crown as follows:
//
// *
// *
//***
//Define a line as a horizontal group of asterisks and a level as a collection of levelHeight lines stacked one on top of the other.
//
//Below the crown there are levelNum levels.
//
//The tree is perfectly symmetrical so all the middle asterisks of the lines lie on the center of the tree.
//
//Each line of the same level (excluding the first one) has two more asterisks than the previous one (one added to each end);
//
//The number of asterisks in the first line of each level is chosen as follows:
//
//the first line of the first level has 5 asterisks;
//the first line of each consecutive level contains two more asterisks than the first line of the previous level.
//And finally there is the tree foot which has a height of levelNum and a width of:
//
//levelHeight asterisks if levelHeight is odd;
//levelHeight + 1 asterisks if levelHeight is even.
//Given levelNum and levelHeight, return the Christmas tree of the young elf.

//func solution(levelNum: Int, levelHeight: Int) -> [String] {
//    var answer = [String]()
//    let middle = (5 + (levelHeight - 1) * 2 + (levelNum - 1) * 2) / 2 + 1
//    var width = 5
//
//    let crown = [(Array(repeating: " ", count: middle - 1) + Array(arrayLiteral: "*")).joined(),
//                 (Array(repeating: " ", count: middle - 1) + Array(arrayLiteral: "*")).joined(),
//                 (Array(repeating: " ", count: middle - 2) + Array(arrayLiteral: "***")).joined()]
//    answer += crown
//
//    for _ in 1 ... levelNum {
//        var tempWidth = width
//        for _ in 1 ... levelHeight {
//            let string = (Array(repeating: " ", count: middle - tempWidth / 2 - 1) + Array(repeating: "*", count: tempWidth)).joined()
//            answer.append(string)
//            tempWidth += 2
//        }
//        width += 2
//    }
//
//    for _ in 1 ... levelNum {
//        let widthBottom = levelHeight % 2 == 0 ? levelHeight + 1 : levelHeight
//        let bottom = (Array(repeating: " ", count: middle - widthBottom / 2 - 1) + Array(repeating: "*", count: widthBottom)).joined()
//        answer.append(bottom)
//    }
//
//    for element in answer {
//        print(element)
//    }
//
//    return answer
//}
//
//solution(levelNum: 6, levelHeight: 6)

//
//You are given an array of desired filenames in the order of their creation. Since two files cannot have equal names, the one which comes later will have an addition to its name in a form of (k), where k is the smallest positive integer such that the obtained name is not used yet.
//
//Return an array of names that will be given to the files.

//genious!
//func solution(names: [String]) -> [String] {
//    var answer = [String]()
//
//    for i in 0 ..< names.count {
//        if !answer.contains(names[i]) {
//            answer.append(names[i])
//        } else {
//            var count = 1
//            while answer.contains("\(names[i])(\(count))") {
//                count += 1
//            }
//            answer.append("\(names[i])(\(count))")
//        }
//    }
//    print(answer)
//    return answer
//}
//
//solution(names: ["doc", "doc", "image", "doc(1)", "doc(2)"])

//Given a rectangular matrix and an integer column, return an array containing the elements of the columnth column of the given matrix (the leftmost column is the 0th one).

//func solution(matrix: [[Int]], column: Int) -> [Int] {
//    var answer = [Int]()
//    for element in matrix {
//        answer.append(element[column])
//    }
//    return answer
//}
//
//func solution(matrix: [[Int]], column: Int) -> [Int] {
//    return matrix.map{ $0[column] }
//}

//Two two-dimensional arrays are isomorphic if they have the same number of rows and each pair of respective rows contains the same number of elements.
//
//Given two two-dimensional arrays, check if they are isomorphic.
//
//
//func solution(array1: [[Int]], array2: [[Int]]) -> Bool {
//    guard array1.count == array2.count else { return false }
//
//    for i in 0 ..< array1.count {
//        if array1[i].count != array2[i].count {
//            return false
//        }
//    }
//    return true
//}
//

//The longest diagonals of a square matrix are defined as follows:
//
//the first longest diagonal goes from the top left corner to the bottom right one;
//the second longest diagonal goes from the top right corner to the bottom left one.
//Given a square matrix, your task is to reverse the order of elements on both of its longest diagonals.

// absolutelly genious

//func solution(matrix: [[Int]]) -> [[Int]] {
//    var answer = matrix
//
//    for i in 0 ..< matrix.count {
//        answer[i][i] = matrix[matrix.count - 1 - i][matrix.count - 1 - i]
//        answer[i][matrix.count - 1 - i] = matrix[matrix.count - 1 - i][i]
//    }
//
//    return answer
//}
//
//solution(matrix: [[1, 2, 3],
//                  [4, 5, 6],
//                  [7, 8, 9]])


//The longest diagonals of a square matrix are defined as follows:
//
//the first longest diagonal goes from the top left corner to the bottom right one;
//the second longest diagonal goes from the top right corner to the bottom left one.
//Given a square matrix, your task is to swap its longest diagonals by exchanging their elements at the corresponding positions.

//func solution(matrix: [[Int]]) -> [[In t]] {
//    var answer = matrix
//
//    for i in 0 ..< matrix.count {
//        answer[i][i] = matrix[i][matrix.count - 1 - i]
//        answer[i][matrix.count - 1 - i] = matrix[i][i]
//    }
//
//    return answer
//}

//Given a rectangular matrix and integers a and b, consider the union of the ath row and the bth (both 0-based) column of the matrix (i.e. all cells that belong either to the ath row or to the bth column, or to both). Return sum of all elements of that union.

//func solution(matrix: [[Int]], a: Int, b: Int) -> Int {
//   var answer = matrix[a].reduce(0, +)
//
//    for i in 0 ..< matrix.count {
//        if i == a {
//            continue
//        }
//        answer += matrix[i][b]
//    }
//
//    return answer
//}
//
//solution(matrix: [[1, 1, 1, 1],
//                  [2, 2, 2, 2],
//                  [3, 3, 3, 3]], a: 1, b: 3)

//You are implementing a command-line version of the Paint app. Since the command line doesn't support colors, you are using different characters to represent pixels. Your current goal is to support rectangle x1 y1 x2 y2 operation, which draws a rectangle that has an upper left corner at (x1, y1) and a lower right corner at (x2, y2). Here the x-axis points from left to right, and the y-axis points from top to bottom.
//
//Given the initial canvas state and the array that represents the coordinates of the two corners, return the canvas state after the operation is applied. For the details about how rectangles are painted, see the example.

//func solution(canvas: [[Character]], rectangle: [Int]) -> [[Character]] {
//    let x1 = rectangle[0], y1 = rectangle[1], x2 = rectangle[2], y2 = rectangle[3]
//    var answer = canvas
//    
//    for y in y1 ... y2 {
//        for x in x1 ... x2 {
//            if y == y1 || y == y2 {
//                answer[y][x] = Character("-")
//            }
//            if x == x1 || x == x2 {
//                answer[y][x] = Character("|")
//            }
//        }
//    }
//    
//    let angle = Character("*")
//    answer[y1][x1] = angle
//    answer[y1][x2] = angle
//    answer[y2][x1] = angle
//    answer[y2][x2] = angle
//    
//    
//    for element in answer {
//        print(element)
//    }
//    return answer
//}
//
//solution(canvas: [["a", "a", "a", "a", "a", "a", "a", "a"],
//                  ["a", "a", "a", "a", "a", "a", "a", "a"],
//                  ["a", "a", "a", "a", "a", "a", "a", "a"],
//                  ["b", "b", "b", "b", "b", "b", "b", "b"],
//                  ["b", "b", "b", "b", "b", "b", "b", "b"]], rectangle: [1, 1, 4, 3])
