//: [Previous](@previous)

import Foundation

//find minimal  jump

//func avoidObstacles(inputArray: [Int]) -> Int {
//    var jump = 1
//    var coordinate = 0
//    while coordinate < inputArray.max()! {
//        coordinate += jump
//        if inputArray.contains(coordinate) {
//            jump += 1
//            coordinate = 0
//        }
//    }
//    return jump
//}
//
//// изящно
//func avoidObsddtacles(inputArray: [Int]) -> Int {
//    var minimumJump = 1
//    while inputArray.map({ $0 % minimumJump }).contains(0) {
//        minimumJump += 1
//    }
//    return minimumJump
//}

///// shame fotoes
/////  почти позор
//
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

/// MARK : Rains of Reason

/// element to replace
// проверяй граничные случаи!

//Given an array of integers, replace all the occurrences of elemToReplace with substitutionElem.

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

//func arrayReplssace(inputArray: [Int], elemToReplace: Int, substitutionElem: Int) -> [Int]
//{
//    return inputArray.map{$0 == elemToReplace ? substitutionElem : $0 }
//}


/// guard if even

//Check if all digits of the given integer are even.

//func evenDigitsOnly(n: Int) -> Bool {
//    return String(n).map{Int(String($0))}.filter{$0! % 2 != 0}.isEmpty
//}
//
//evenDigitsOnly(n: 248622)

/// check English letters

//Correct variable names consist only of English letters, digits and underscores and they can't start with a digit.
//
//Check if the given string is a correct variable name.

//print(UnicodeScalar("f"))
//
//let kkk : Character =  "j"
//kkk.asciiValue
//
//var afrrChar = "kdhjbsgb".map { Character((String($0))).asciiValue }
//print(afrrChar)
//
//
//let arvvr = [Character("A").asciiValue ... Character("Z").asciiValue] +
//    [Character("a").asciiValue ... Character("z").asciiValue] +
//    [Character("0").asciiValue ... Character("9").asciiValue] +
//    [Character("_").asciiValue]

/// пытался решить через юникод скаляры но не получилось

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


/// change letter to next one

//Given a string, your task is to replace each of its characters by the next one in the English alphabet; i.e. replace a with b, replace b with c, etc (z would be replaced by a).

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


// two cells on chessboard

//Given two cells on the standard chess board, determine whether they have the same color or not.`

//func chessBoardCellColor(cell1: String, cell2: String) -> Bool {
//    let arr1 = cell1.map {String($0)}
//    let arr2 = cell2.map {String($0)}
//
//    let differenseLetter = Int(Character(arr1[0]).asciiValue!) - Int(Character(arr2[0]).asciiValue!)
//    let differenseNumbers = Int(arr1[1])! - Int(arr2[1])!
//
//    if (abs(differenseLetter) + abs(differenseNumbers)) % 2 == 0 {
//        return true
//    } else {
//        return false
//    }
//}
//
//chessBoardCellColor(cell1: "a3", cell2: "b5")
//
//func chessBovvardCellColor(cell1: String, cell2: String) -> Bool {
//    return  cell1.unicodeScalars.map {$0.value}.reduce(0, +) % 2 ==
//            cell2.unicodeScalars.map {$0.value}.reduce(0, +) % 2
//}

//func chessvvdBoardCellColor(cell1: String, cell2: String) -> Bool {
//    let a = Int(cell1.unicodeScalars.first!.value) - 64 + Int("\(cell1.characters.last!)")!
//    let b = Int(cell2.unicodeScalars.first!.value) - 64 + Int("\(cell2.characters.last!)")!
//    return (a % 2 == 0) == (b % 2 == 0)
//}


////  MARK: numbers

//Consider integer numbers from 0 to n - 1 written down along the circle in such a way that the distance between any two neighboring numbers is equal (note that 0 and n - 1 are neighboring, too).
//
//Given n and firstNumber, find the number which is written in the radially opposite position to firstNumber.

//func circleOfNumbers(n: Int, firstNumber: Int) -> Int {
//    return firstNumber >= n/2 ? firstNumber - n/2 : firstNumber + n/2
//}


//func circffleOfNumbers(n: Int, firstNumber: Int) -> Int {
//    return (firstNumber + n/2) % n
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


//Given an array of equal-length strings, you'd like to know if it's possible to rearrange the order of the elements in such a way that each consecutive pair of strings differ by exactly one character. Return true if it's possible, and false if not.



//var thty = ttt.map {$0.unicodeScalars.map{$0.value}.reduce(0, +)}.sorted()
//print(thty)

//прекрасно работает если буквы бы отличались на одну

//func stringsRearrangement(inputArray: [String]) -> Bool {
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
//
//var ff = ["aa",
//          "ba",
//          "cb"]
//
//stringsRearrangement(inputArray: ff)
