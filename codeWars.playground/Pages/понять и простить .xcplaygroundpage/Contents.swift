//: [Previous](@previous)

import Foundation

/// similar arrays////////
// оптяь очень долго
//func areSimilar(a: [Int], b: [Int]) -> Bool {
//    var newA = a
//    guard a != b else {
//        return true
//    }
//
//    for i in 0 ... (newA.count - 2) {
//        for j in 1 ... (newA.count - i - 1) {
//            let tmp = newA[i]
//            newA[i] = newA[i + j]
//            newA[i + j] = tmp
//            if newA == b {
//                return true
//            } else {
//                newA = a
//            }
//        }
//     }
//    return false
//}
//
//
//let a =  [3, 1, 2, 3, 4, 8]
//let b =  [3, 2, 1, 3, 4, 8]
//
//areSimilar(a: a, b: b)
//
//var aa = [4, 6, 3]
//var bb = [3, 4, 6]
//
//areSimilar(a: aa, b: bb)

// а это гениально
//сложность алгоритма в разы меньше
//
//func areSввimilar(a: [Int], b: [Int]) -> Bool {
//    var similar: [Int] = []
//
//    for i in 0..<a.count {
//        if a[i] != b[i] {
//            similar.append(i)
//        }
//    }
//
//    if similar.count == 0 {
//        return true
//    } else if similar.count != 2 {
//        return false
//    }
//
//    let c = similar[0]
//    let d = similar[1]
//
//    return a[c] == b[d] && a[d] == b[c] ? true : false
//}
//
//let a =  [3, 1, 2, 3, 4, 8]
//let b =  [3, 2, 1, 3, 4, 8]
//
//areSввimilar(a: a, b: b)
//
//var aa = [4, 6, 3]
//var bb = [3, 4, 6]
//
//areSввimilar(a: aa, b: bb)


/// matrix and gosts ////

//var matrix = [[0, 1, 1, 2],
//              [0, 5, 0, 0],
//              [2, 0, 3, 3]]
//
//
//func matrixElementsSum(matrix: [[Int]]) -> Int {
//    var matrixnew = matrix
//    max: for i in 0 ... matrixnew.count - 1 {
//          for j in 0 ... matrixnew[i].count - 1 {
//            if matrixnew[i][j] == 0 {
//                for x in i ... matrixnew.count - 1 {
//                    matrixnew[x][j] = 0
//                }
//            }
//        }
//    }
//    let matrixFlat = matrixnew.flatMap{$0}
//    return matrixFlat.reduce(0, +)
//}
//
//matrixElementsSum(matrix: matrix)


// совсем по другому цикл/ рассмотреть!

//func matrixEleввmentsSum(matrix: [[Int]]) -> Int {
// var sum = 0
//    for column in 0..<matrix[0].count {
//        for row in 0..<matrix.count {
//            if matrix[row][column] != 0 {
//                sum += matrix[row][column]
//            } else {
//                break
//            }
//        }
//    }
//    return sum
//}



/// remove one element ///

//func almostIncreasingSequence(sequence: [Int]) -> Bool {
//    guard sequence.count > 2 else {
//        return true
//    }
//    if (sequence.count - Set(sequence).count) > 1 {
//        return false
//    }
//
//
//    return true
//}
//
//almostIncreasingSequence(sequence: [1, 1, 2, 3, 4, 4])

//2 ≤ sequence.length ≤ 105,
//-105 ≤ sequence[i] ≤ 105

//var arrc = [Int]()
//for _ in 1 ... 10_000 {
//arrc.append(Int.random(in: -100_000 ... 100_000))
//}
//let arccLet = arrc
//almostIncreasingSequence(sequence: arccLet)

/// слишком долго
//func almostIncreasingSequence(sequence: [Int]) -> Bool {
//    guard sequence.count > 2 else {
//        return true
//    }
//    if (sequence.count - Set(sequence).count) > 1 {
//        return false
//    }
//    let newSeq = sequence
//    for i in 0 ... newSeq.count - 1 {
//        var tempArr = newSeq
//        tempArr.remove(at: i)
//        if tempArr.sorted() == tempArr  {
//            return true
//        }
//        tempArr = newSeq
//    }
//    return false
//}

// над этим подумать
//func almoffstIncreasingSequence(sequence: [Int]) -> Bool {
//var strikes = 0, firstMax = -100000, secondMax = -100000
//
//for i in 0...sequence.count - 1 {
//    if sequence[i] > firstMax {
//        secondMax = firstMax
//        firstMax = sequence[i]
//    } else if sequence[i] > secondMax {
//        firstMax = sequence[i];
//        strikes += 1
//    } else {
//        strikes += 1
//    }
//}
//
//return strikes < 2
//}
//
//almoffstIncreasingSequence(sequence: arccLet)



/// shame fotoes
///  почти позор

//func boxBlur(image: [[Int]]) -> [[Int]] {
//    var answerArr = Array(repeating: Array(repeating: 0, count: (image.count - 2)), count: (image.count - 2))
////    var imageFlat = image.flatMap({$0})
//    var tempInt
//
//    for string in 0 ... image.count - 3 {
//        let tempArr = image[(0 + string) ... (2 + string)]
//        for element in tempArr {
//            for row in (0 + string) ... (2 + string) {
//                tempInt += element[row]
//            }
//        }
//        
//    }
//
//    print(answerArr)
//    return answerArr
//}
//
//var test = [[1,2,3,4],
//            [1,2,3,4],
//            [1,2,3,4],
//            [1,2,3,4]]
//
//var ff = test[0...2]
//var rr = test[1][0...2]
//
//print(test)
//print(ff)
//print(rr)
//
//
//func bovvvxBlur(image: [[Int]]) -> [[Int]] {
//  var arr = Array<[Int]>(repeating: Array<Int>(repeating: 0, count: image[0].count - 2), count: image.count - 2)
//  
//  for i in 0..<arr.count {
//    for j in 0..<arr[i].count {
//      arr[i][j] = Int(Double(image[i][j] + image[i][j + 1] + image[i][j + 2] + image[i + 1][j] + image[i + 1][j + 1] + image[i + 1][j + 2] + image[i + 2][j] + image[i + 2][j + 1] + image[i + 2][j + 2]) / Double(9))
//    }
//  }
//  
//  return arr
//}
//
//func getArrayAverage(x: Int, y: Int, imageArray: [[Int]]) -> Int {
//    var average:Int = 0
//    for xArray in imageArray[y...(y+2)] {
//        average += xArray[x...(x+2)].reduce(0, +)
//    }
//    
//    return Int((Double(average)/9).rounded(.down))
//    
//}
//
//
//func boxBlnbur(image: [[Int]]) -> [[Int]] {
//    let sizeX = image[0].count - 2
//    let sizeY = image.count - 2
//    var result: [[Int]] = [[Int]]()
//    for yIndex in 0..<sizeY {
//        var xArray = [Int]()
//        for xIndex in 0..<sizeX {
//            let av = getArrayAverage(x:xIndex, y:yIndex, imageArray: image)
//            xArray.append(av)
//        }
//        result.append(xArray)
//    }
//    return result
//}


// minesweeper

//func minesweeper(matrix: [[Bool]]) -> [[Int]] {
//    var answerArr : [[Int]] = []
//    let matrixStringLength = matrix[0].count
//    let matrixColumnLenght = matrix.count
//    let tempStringArr = Array(repeating: 0, count: matrixStringLength)
//    answerArr = Array(repeating: tempStringArr, count: matrixColumnLenght)
//
//    for y in 0 ... matrixColumnLenght - 1 {
//        for x in 0 ... matrixStringLength - 1 {
//            if matrix[y][x] == false {
//                continue
//            } else {
//                for i in (y - 1) ... (y + 1) {
//                    if i < 0 || i > matrixColumnLenght - 1{
//                        continue
//                    }
//                    for j in (x - 1) ... (x + 1) {
//                        if j < 0 || j > matrixStringLength - 1{
//                            continue
//                        }
//                        answerArr[i][j] += 1
//                    }
//                }
//            }
//            answerArr[y][x] -= 1
//        }
//    }
//    print(answerArr)
//    return answerArr
//}
//
//var test = [[true, false, false, false],
//            [false, true, false, false],
//            [false, false, true, false],
//            [true, false, false, true]]
//
//print(test)
//minesweeper(matrix: test)


//func minebsweeper(matrix: [[Bool]]) -> [[Int]] {
//var arr = Array<[Int]>(repeating: Array<Int>(repeating:0, count: matrix[0].count), count: matrix.count)
//
//  for i in 0..<matrix.count {
//    for j in 0..<matrix[i].count {
//      for i1 in -1...1 {
//        for j1 in -1...1 {
//            // MARK: очень интересная штука ~=
//          if (i1 != 0 || j1 != 0) && 0..<matrix.count ~= (i + i1) && 0..<matrix[i].count ~= (j + j1) {
//            arr[i][j] += matrix[i + i1][j + j1] ? 1 : 0
//          }
//        }
//      }
//    }
//  }
//
//  return arr
//}



/// element to replace
// проверяй граничные случаи!

//func arrayReplace(inputArray: [Int], elemToReplace: Int, substitutionElem: Int) -> [Int] {
//
//    guard !inputArray.isEmpty else {
//        return []
//    }
//
//var answerArr = inputArray
//    for i in 0 ... answerArr.count - 1 {
//        if answerArr[i] == elemToReplace {
//            answerArr[i] = substitutionElem
//        }
//    }
//    return answerArr
//}
//
//arrayReplace(inputArray: [], elemToReplace: 2, substitutionElem: 5)

//func arrayReplace(inputArray: [Int], elemToReplace: Int, substitutionElem: Int) -> [Int]
//{
//    return inputArray.map{$0 == elemToReplace ? substitutionElem : $0 }
//}

//func variableName(name: String) -> Bool {
//    let arrLett = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_"]
//    let arrNum = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
//    let totalarr = arrLett + arrNum
//
//    var arrChar = name.map { (String($0)) }
//
//    if !arrNum.contains(arrChar[0]) && arrChar.filter({!(totalarr).contains($0)}).isEmpty {
//        return true
//    } else {
//        return false
//    }
//}
//
//func varivvableName(name: String) -> Bool {
//    return name.range(of: "^([a-zA-Z]|_)([a-zA-Z0-9]|\\_)*$", options: .regularExpression, range: nil, locale: nil) != nil
//}
//
//varivvableName(name: "kfglnsbo4j4jk")
//variableName(name: "1variable")
//


//Character(UnicodeScalar(Character("a").asciiValue! - 1))
//
//func alphabeticShift(inputString: String) -> String {
//    var tempStr = inputString.map {$0}
//    for i in 0 ... tempStr.count - 1 {
//        if tempStr[i] == "z" {
//            tempStr[i] = "`"
//        }
//    }
//
//    var answerStr = String(tempStr.map {(Character(UnicodeScalar($0.asciiValue! + 1)))})
//
//    return answerStr
//}
//
//alphabeticShift(inputString: "abcz")
//
//func alphavvvbeticShift(inputString: String) -> String {
//    let bytes = Array(inputString.utf8).map{$0 == 122 ? 97 : $0 + 1}
//    return String(bytes: bytes, encoding: .utf8)!
//}



// deposit profit

//You have deposited a specific amount of money into your bank account. Each year your balance increases at the same growth rate. With the assumption that you don't make any additional deposits, find out how long it would take for your balance to pass a specific threshold.


//func depositProfit(deposit: Int, rate: Int, threshold: Int) -> Int {
//    var answerYears = 0
//    var newDeposit = Double(deposit)
//    while newDeposit < Double(threshold) {
//        newDeposit *= (Double(rate) + 100.0) / 100.0
//        answerYears += 1
//    }
//    return answerYears
//}
//
//
//depositProfit(deposit: 100, rate: 1, threshold: 101)
//
//
//func depositProddfit(deposit: Int, rate: Int, threshold: Int) -> Int {
//    let n = log(Double(Double(threshold) / Double(deposit)))  / log(Double(1 + Double(rate) / 100))
//
//    return Int(ceil(n))
//}
//
//var t = log(10.0)


// another sorted array

//Given a sorted array of integers a, your task is to determine which element of a is closest to all other values of a. In other words, find the element x in a, which minimizes the following sum:

//var a = [2, 4, 7]

// не работает на 10 в 6 степени
// может переполняется память

//func absoluteValuesSumMinimization(a: [Int]) -> Int {
//    var minimumValue = Int.max
//    var answer = 0
//        for i in 0 ... a.count - 1 {
//            let tempRes = a.reduce(0) { (total, number) in
//                total + abs(number - a[i])}
//            if tempRes < minimumValue {
//                minimumValue = tempRes
//                answer = a[i]
//            }
//        }
//    return answer
//}
//
// похоже на бред
//func absolutddeValuesSumMinimization(a: [Int]) -> Int {
//    return a[a.count % 2 == 0 ? a.count / 2 - 1 : a.count / 2]
//}

//absoluteValuesSumMinimization(a: [2, 4, 7])

///Given an array of equal-length strings, you'd like to know if it's possible to rearrange the order of the elements in such a way that each consecutive pair of strings differ by exactly one character. Return true if it's possible, and false if not.



//var thty = ttt.map {$0.unicodeScalars.map{$0.value}.reduce(0, +)}.sorted()
//print(thty)

//прекрасно работает если буквы бы отличались на одну

//var rr = ["ff", "aa",
//          "ba",
//          "cb"]
//print(rr.sorted())
//var tt = rr.sorted()
//print(tt.map{$0.map{$0}})
//
//var f = ["a", "b", "c"]
//var e = ["a", "b", "d"]
//
//f[0] == e[0]
//
//func stringsRearrangement(inputArray: [String]) -> Bool {
//    var mult = 0
//    var newArr = inputArray.sorted()
//    let newArrSort = newArr.map{$0.map{$0}}
//    for i in 0 ..< inputArray.count - 1 {
//        for j in 0 ... inputArray[i].count - 1 {
//            if newArrSort[i][j] != newArrSort[i + 1][j] {
//                mult += 1
//            }
//            if mult != 1 {
//                return false
//            }
//        }
//        mult = 0
//    }
//    return true
//}

//func stringsRearrangement2(inputArray: [String]) -> Bool {
//    let newArr = inputArray.map {$0.unicodeScalars.map{$0.value}.reduce(0, +)}.sorted()
//    for i in 0 ... newArr.count - 2 {
//        if newArr[i + 1] - newArr[i] > 1 {
//            print(newArr)
//            return false
//        }
//    }
//    print(newArr)
//    return true
//}

//var ff = ["aa",
//          "ba",
//          "ce"]
//
//var trt = ["dd", "ab",
//          "bb",
//          "aa"]
//print(trt.enumerated())

//stringsRearrangement(inputArray: ff)
//stringsRearrangement(inputArray: trt)

//func stringsRearrangement(inputArray: [String]) -> Bool {
//    var result = [[String]]()
//
//    func permute(head: [String], tail: [String]) {
//        if tail.isEmpty {
//            result += [head]
//        }
//        for (i, t) in tail.enumerated() {
//            var newTail = tail
//            newTail.remove(at: i)
//            permute(head: head + [t], tail: newTail)
//        }
//    }
//    permute(head: [], tail: inputArray)
//
//    return result.first { arr in
//        zip(arr, arr[1...]).reduce(true) { $0 && zip($1.0, $1.1).filter { $0 != $1 }.count == 1 }
//    } != nil
//}
//

//longestDigitsPrefix(inputString: String) -> String {
//    var answerStr = ""
//    var tempStr = ""
//
//    for element in inputString {
//        if element == " " {
//            return answerStr
//        } else  if Int(String(element)) != nil {
//            tempStr.append(element)
//            if tempStr.count > answerStr.count {
//                answerStr = tempStr
//            }
//        } else {
//            tempStr = ""
//        }
//    }
//    return answerStr
//}
//
//longestDigitsPrefix(inputString: "1j2c42ciu5ie99xr0vq5w1slwhq985fp2239qc196d66m")

//func longestDiffgitsPrefix(inputString: String) -> String {
//    return inputString.components(separatedBy: CharacterSet.decimalDigits.inverted).first ?? ""
//}

//func longestDigitsPrefix(inputString: String) -> String {
//    return String(inputString.prefix{ $0.isNumber })
//}
