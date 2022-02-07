//: [Previous](@previous)

//import Foundation

/// from the first try!

//func palindromeRearranging(inputString: String) -> Bool {
//    let startArray = inputString.map {String($0)}
//    var arrayOfRepeats : [Int] = []
//    var proceedElements : [String] = []
//
//    startArray.forEach({
//        let element = $0
//
//        guard proceedElements.contains(element) == false
//        else {
//            return
//        }
//
//        let elementcount = startArray.filter({$0 == element}).count
//        arrayOfRepeats.append(elementcount)
//        proceedElements.append(element)
//    })
//
//    if startArray.count % 2 == 0 {
//        let checArr = arrayOfRepeats.filter({$0 % 2 != 0})
//        return checArr.isEmpty
//    } else {
//        let chechArr = arrayOfRepeats.filter({$0 % 2 != 0})
//        return chechArr.count == 1
//    }
//}
//
//palindromeRearranging(inputString: "abdhuierf")
//
//
//
////find minimal  jump
//
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

/// guard if even

//func evenDigitsOnly(n: Int) -> Bool {
//    return String(n).map{Int(String($0))}.filter{$0! % 2 != 0}.isEmpty
//}
//
//evenDigitsOnly(n: 248622)


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

//func chessBovvardCellColor(cell1: String, cell2: String) -> Bool {
//    return  cell1.unicodeScalars.map {$0.value}.reduce(0, +) % 2 ==
//            cell2.unicodeScalars.map {$0.value}.reduce(0, +) % 2
//}

//
//Given an array of equal-length strings, you'd like to know if it's possible to rearrange the order of the elements in such a way that each consecutive pair of strings differ by exactly one character. Return true if it's possible, and false if not.



//var thty = ttt.map {$0.unicodeScalars.map{$0.value}.reduce(0, +)}.sorted()
//print(thty)
//
//func stringsRearrangement(inputArray: [String]) -> Bool {
//    let newArr = inputArray.map {$0.unicodeScalars.map{$0.value}.reduce(0, +)}.sorted()
//    for i in 0 ... newArr.count - 2 {
//        if newArr[i + 1] - newArr[i] > 1 {
//            return false
//        }
//    }
//    return true
//}

//Given a string, find the number of different characters in it.

//func differentSymbolsNaive(s: String) -> Int {
//    return Set(s.map{$0}).count
//}

//Given array of integers, find the maximal possible sum of some of its k consecutive elements.

//func arrayMaxConsecutiveSum(inputArray: [Int], k: Int) -> Int {
//var maxSum = 0
//    for i in 0 ... (inputArray.count - k) {
//        let tempArr = inputArray[i ... (i + k - 1)]
//        if tempArr.reduce(0, +) > maxSum {
//            maxSum = tempArr.reduce(0, +)
//        }
//    }
//    return maxSum
//}
//
//arrayMaxConsecutiveSum(inputArray: [1, 3, 2, 4], k: 3)

///

// это решение ище макс первое число
//func longestDigitsPrefix(inputString: String) -> String {
//
//var answerStr = ""
//
//for element in inputString {
//    if element == " " {
//        return answerStr
//    } else  if Int(String(element)) != nil {
//        answerStr.append(element)
//    } else if  Int(String(element)) == nil {
//        break
//    }
//}
//return answerStr
//}
//// это решение ищет макс число в строке
//
//func longesdtDigitsPrefix(inputString: String) -> String {
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

//Let's define digit degree of some positive integer as the number of times we need to replace this number with the sum of its digits until we get to a one digit number.
//
//Given an integer, find its digit degree.
// brilliant

//func digitDegree(n: Int) -> Int {
//    func madeArrReduce (num: Int) -> Int {
//        return String(num).map { Int(String($0))! }.reduce(0, +)
//    }
//    var count = 0
//    var tempNum = n
//    while String(tempNum).count > 1 {
//        tempNum = madeArrReduce(num: tempNum)
//        count += 1
//    }
//    return count
//}
//
//digitDegree(n: 44444444444455555)

// подумать о рекурсии

//func digitDevgree(n: Int) -> Int {
//    return n > 9 ? 1 + digitDevgree(n: String(n).characters.map { Int(String($0))! }.reduce(0) { $0 + $1 }) : 0
//}

//Given the positions of a white bishop and a black pawn on the standard chess board, determine whether the bishop can capture the pawn in one move.
//
//The bishop has no restrictions in distance for each move, but is limited to diagonal movement. Check out the example below to see how it can move:

// следить за сравниваемым типом данных/


//func bishopAndPawn(bishop: String, pawn: String) -> Bool {
//    let arrBishop = bishop.map { Character(String($0)).asciiValue! }
//    let arrPawn = pawn.map { Character(String($0)).asciiValue! }
//
//    return abs(Int(arrBishop[0]) - Int(arrPawn[0])) == abs(Int(arrBishop[1]) - Int(arrPawn[1]))
//}

//An email address such as "John.Smith@example.com" is made up of a local part ("John.Smith"), an "@" symbol, then a domain part ("example.com").
//
//The domain name part of an email address may only consist of letters, digits, hyphens and dots. The local part, however, also allows a lot of different special characters. Here you can look at several examples of correct and incorrect email addresses.
//
//Given a valid email address, find its domain part.

//func findEmailDomain(address: String) -> String {
//    var separated = address.components(separatedBy: "@")
//    return separated.removeLast()
//}

//Given a string, find the shortest possible string which can be achieved by adding characters to the end of initial string to make it a palindrome.

//func buildPalindrome(st: String) -> String {
//    var answerArr = st.map({ $0 })
//
//    for i in 0 ... answerArr.count {
//        let tempArr = answerArr + answerArr.prefix(i).reversed()
//        if tempArr.map({ $0 }) == tempArr.map ({ $0 }).reversed() {
//            answerArr = tempArr
//            break
//        }
//    }
//        return String(answerArr)
//}
 
// part 9 - 400
//func solution(systemNames: [String], stepNumbers: [Int]) -> Bool {
//    var numb = [[Int]]()
//    var checked = [String]()
//
//    for i in 0 ..< systemNames.count {
//        if !checked.contains(systemNames[i]) {
//            numb.append([0])
//            checked.append(systemNames[i])
//        }
//        let element = stepNumbers[i]
//        let position = checked.firstIndex(of: systemNames[i])!
//        if numb[position][0] < element {
//            numb[position][0] = element
//        } else {
//            print(numb)
//            return false
//        }
//    }
//    print(numb)
//    return true
//}

//Consider a sequence of numbers a0, a1, ..., an, in which an element is equal to the sum of squared digits of the previous element. The sequence ends once an element that has already been in the sequence appears again.
//
//Given the first element a0, find the length of the sequence.

//func solution(a0: Int) -> Int {
//    var array: Array<Int> = [a0]
//    while array.count == Set(array).count {
//        let nextNum = String(array.last!).map{ Int(String($0))! }.reduce(0) { (total, number) in
//            total + Int(pow(Double(number), 2)) }
//        array.append(nextNum)
//    }
//    return array.count
//}
//
//solution(a0: 103)

//Some file managers sort filenames taking into account case of the letters, others compare strings as if all of the letters are of the same case. That may lead to different ways of filename ordering.
//
//Call two filenames an unstable pair if their ordering depends on the case.
//
//To compare two filenames a and b, find the first position i at which a[i] ≠ b[i]. If a[i] < b[i], then a < b. Otherwise a > b. If such position doesn't exist, the shorter string goes first.
//
//Given two filenames, check whether they form an unstable pair.

//func solution(filename1: String, filename2: String) -> Bool {
//    return [filename1, filename2].max()!.lowercased() != String([NSString(string: filename1).uppercased, NSString(string: filename2).uppercased].max()!).lowercased()
//}
//
//solution(filename1: "A", filename2: "z")


//You are given a vertical box divided into equal columns. Someone dropped several stones from its top through the columns. Stones are falling straight down at a constant speed (equal for all stones) while possible (i.e. while they haven't reached the ground or they are not blocked by another motionless stone). Given the state of the box at some moment in time, find out which columns become motionless first.

//let rows = ["#..##",
//            ".##.#",
//            ".#.##",
//            "....."]
//
//func checkRow (row: String) -> Bool {
//    var multa = 0
//    let row = row.map { String($0) }
//    if row.last == "#" {
//        for i in 0 ..< row.count {
//            if row[row.count - 1 - i] != "#" {
//                multa += 1
//            }
//            if multa >= 1 && row[row.count - 1 - i] == "#" {
//                return false
//            }
//        }
//    } else if row.filter { $0 == "#"}.count == 0  {
//        return true
//    } else {
//        return false
//    }
//    return true
//}
//
//func moveRow (row: String) -> String {
//    var answer = row.map { String($0) }
//
//    for i in 0 ..< answer.count {
//        if answer[answer.count - 1 - i] != "#" {
//            answer.remove(at: answer.count - 1 - i)
//            answer.insert(".", at: 0)
//            break
//        }
//    }
//    return answer.joined()
//}
//
//func solution(rows: [String]) -> [Int] {
//    let newrows = rows.map { $0.map { String($0) } }
//    var answer = [Int]()
//    var colums = [String]()
//
//    for i in 0 ..< newrows[0].count {
//        var element = ""
//        for j in 0 ..< newrows.count {
//            element += newrows[j][i]
//        }
//        colums.append(element)
//    }
//
//big: for _ in 1 ... colums[0].count {
//
//        for i in 0 ..< colums.count {
//            if checkRow(row: colums[i]) {
//                answer.append(i)
//            }
//        }
//
//        if answer.isEmpty {
//            for i in 0 ..< colums.count {
//                colums[i] = moveRow(row: colums[i])
//            }
//        } else {
//            break big
//        }
//
//    }
//
//    return answer
//}
//
//solution(rows: rows)
//
//var str = "#.....#"
//
//checkRow(row: str)
//let new = moveRow(row: str)
//checkRow(row: new)
//let nn = moveRow(row: new)
//checkRow(row: nn)
//
//// как это работает вообще хз
//
//func solution(rows: [String]) -> [Int] {
//    var holes = Array(repeating: 0, count: rows[0].characters.count)
//    var rocks = Array(repeating: false, count: rows[0].characters.count)
//    for row in rows {
//        for (i, c) in row.characters.enumerated() {
//            if c == "." && rocks[i] {
//                holes[i] += 1
//            }
//            if !rocks[i] && c == "#" {
//                rocks[i] = true
//            }
//        }
//    }
//    return holes.enumerated().filter({$0.1 == holes.min(by: <)!}).map({$0.0})
//}


//A nonogram is also known as Paint by Numbers and Japanese Crossword. The aim in this puzzle is to color the grid into black and white squares. At the top of each column, and at the side of each row, there are sets of one or more numbers which describe the runs of black squares in that row/column in exact order. For example, if you see 10 1 along some column/row, this indicates that there will be a run of exactly ten black squares, followed by one or more white squares, followed by a single black square. The cells along the edges of the grid can also be white.
//
//You are given a square nonogram of size size. Its grid is given as a square matrix nonogramField of size (size + 1) / 2 + size, where the first (size + 1) / 2 cells of each row and and each column define the numbers for the corresponding row/column, and the rest size × size cells define the the grid itself.
//
//Determine if the given nonogram has been solved correctly.
//
//Note: here / means integer division.

//var size = 5
//var nonogramField = [["-", "-", "-", "-", "-", "-", "-", "-"],
//                     ["-", "-", "-", "2", "2", "1", "-", "1"],
//                     ["-", "-", "-", "2", "1", "1", "3", "3"],
//                     ["-", "3", "1", "#", "#", "#", ".", "#"],
//                     ["-", "-", "2", "#", "#", ".", ".", "."],
//                     ["-", "-", "2", ".", ".", ".", "#", "#"],
//                     ["-", "1", "2", "#", ".", ".", "#", "#"],
//                     ["-", "-", "5", "#", "#", "#", "#", "#"]]
//
//var row = ["-", "1", "2", "#", ".", ".", "#", "#"]
//
//func checkRow(row: [String], size: Int) -> Bool {
//    var count = 0
//    var row = row
//    var numbers = [Int]()
//    var numberCheck = [Int]()
//
//    for elemenin in row {
//        if let num = Int(elemenin) {
//            numbers.append(num)
//        }
//    }
//
//    for i in (row.count - 1 - size) ... (row.count - 1) {
//        if row[i] == "#" {
//            count += 1
//        } else {
//            numberCheck.append(count)
//            count = 0
//        }
//    }
//    numberCheck.append(count)
//
//    if numbers == numberCheck.filter { $0 != 0 } {
//        return true
//    } else {
//        return false
//    }
//}
//
//func columToRow(field: [[String]], colum: Int) -> [String] {
//    var answer = [String]()
//
//    for i in 0 ..< field.count {
//        answer.append(field[i][colum])
//    }
//    return answer
//}

//checkRow(row: row, size: 5)
//columToRow(field: nonogramField , colum: 4)

// works perfect
//func solution(size: Int, nonogramField: [[String]]) -> Bool {
//    var arrToCheck = [[String]]()
//
//    for i in (nonogramField.count - size) ... (nonogramField.count - 1) {
//        arrToCheck.append(nonogramField[i])
//    }
//
//    for j in (nonogramField[0].count - size) ... (nonogramField[0].count - 1) {
//        arrToCheck.append(columToRow(field: nonogramField, colum: j))
//    }
//
//    for element in arrToCheck {
//        print(element)
//    }
//
//    for x in 0 ..< arrToCheck.count {
//        if checkRow(row: arrToCheck[x], size: size) == false {
//            return false
//        }
//    }
//
//    return true
//}
//
//solution(size: 5, nonogramField: nonogramField)
