//: [Previous](@previous)

import Foundation

//You are given an array of desired filenames in the order of their creation. Since two files cannot have equal names, the one which comes later will have an addition to its name in a form of (k), where k is the smallest positive integer such that the obtained name is not used yet.
//
//Return an array of names that will be given to the files.
//
//var names = ["doc", "doc", "image", "doc(1)", "doc"]
//var answerNames =  ["doc", "doc(1)", "image", "doc(1)(1)", "doc(2)"]
//var names2 = ["a(1)",
//              "a(6)",
//              "a",
//              "a",
//              "a",
//              "a",
//              "a",
//              "a",
//              "a",
//              "a",
//              "a",
//              "a"]
/// работае в ограниченных случаях
//func solution2(names: [String]) -> [String] {
//    let namesArr = names
//    var tempNameArr = [String]()
//    namesArr.forEach {
//        var element = $0
//        var i = 1
//
//        while tempNameArr.contains(element) {
//
//            element += "(" + "\(i)" + ")"
//            i += 1
//        }
//        tempNameArr.append(element)
//        i = 1
//    }
//    print(names)
//    print(tempNameArr)
//    return tempNameArr
//}

//solution(names: names)
//solution(names: names2)


/// как перевести юнискаляр в стринг?
//func solution(names: [String]) -> [String] {
//    let namesArr = names.map { $0.unicodeScalars.map { $0.value } }
//    var answerArr = [[UInt32]]()
//    answerArr = Array(repeating: [], count: 1)
//    var answerStr: Array <String> = [""]
//
//    namesArr.forEach {
//        var element = $0
//        var i: UInt32 = 1
//
//        while answerArr.contains(element) {
//            if element[(element.count - 1)] == 41 {
//                element[(element.count - 2)] += i
//                i += 1
//            } else {
//                element.append(40)
//                element.append(48 + i)
//                element.append(41)
//                i += 1
//            }
//        }
//        answerArr.append(element)
//        i = 1
//    }
//
//    print(names)
//    print(namesArr)
//    print(answerArr.filter { !$0.isEmpty })
//    var tempAnswer = answerArr.filter { !$0.isEmpty }
//
//    answerStr = tempAnswer.map { String($0.map { Character($0) } ) }
//
//
//    return ["d"]
//}
//
//solution(names: names)

/// а такое же решение
/// не понимаю чем от моего отличается
//func solution(names: [String]) -> [String] {
//    var result = [String]()
//    for i in 0..<names.count {
//        var count = 0
//        var name = names[i]
//        while result.contains(name) {
//            count += 1
//            name = names[i] + "(\(count))"
//        }
//        result.append(name)
//    }
//    print(names)
//    print(result)
//    return result
//}
//
//solution(names: names)


//You are taking part in an Escape Room challenge designed specifically for programmers. In your efforts to find a clue, you've found a binary code written on the wall behind a vase, and realized that it must be an encrypted message. After some thought, your first guess is that each consecutive 8 bits of the code stand for the character with the corresponding extended ASCII code.
//
//Assuming that your hunch is correct, decode the message.

//var code = "010010000110010101101100011011000110111100100001"
//// прикольно но можно лучше
//func solution2(code: String) -> String {
//    var str = Int(code, radix: 2)
//    var arrBinary: Array <Array <Int>> = []
//    var arrInt = code.map { Int(String($0))! }
//    print(str)
//    print(arrInt)
//
//    for i in 0 ..< (arrInt.count / 8) {
//        arrBinary.append( Array(arrInt[(0 + (8 * i)) ... (7 + (8 * i))] ))
//    }
//    print(arrBinary)
//
//    var answer = ""
//
//    for i in 0 ..< arrBinary.count {
//        var char = ""
//        for j in 0 ..< 8 {
//            char += String(arrBinary[i][j])
//        }
//        print(char)
//        answer += String(UnicodeScalar(UInt8(char, radix: 2)!))
//    }
//
//    return answer
//}
//
//solution2(code: code)
//
//solution(code: code)
//
//func solution(code: String) -> String {
//    var index = code.startIndex
//    var result = ""
//
//    for _ in 0 ..< (code.count / 8) {
//        let newIndex = code.index(index, offsetBy: 8)
//        let charBits = code[index ..< newIndex]
//        result += String(UnicodeScalar(UInt8(charBits, radix: 2)!))
//        index = newIndex
//    }
//    return result
//}


//Construct a square matrix with a size N × N containing integers from 1 to N * N in a spiral order, starting from top-left and in clockwise direction.

// почти решил
//func solution(n: Int) -> [[Int]] {
//    let maxnumber = n * n
//    var arrRow : Array<Int> = Array(1 ... n)
//    var matrix = Array(repeating: arrRow, count: n)
////    print(matrix)
//    var row = n
//    //  row = количество элементов в подстроке
//    var rout = 1
//    // проверка на вверх низ // низ вверх
//    var step = 1
//    // step = шаг итерации
//
//    while row > 1 {
//        if rout % 2 != 0 {
//            for i in 0 ..< row {
//                matrix[i][row - rout] = (n * step) + i
//            }
//            step += 1
//            for i in 0 ..< row {
//               matrix[row - rout][i] = (n * step  + n - 2) - i
//            }
//            step += 1
//            rout += 1
//            row  -= 1
//
//        } else {
//            for i in 1 ..< row {
//                matrix[i][0] = (n * step + n - 3) - i
//        }
//            step += 1
//            for i in 0 ..< row {
//                matrix[1][i] = (n * step  - 3) + i
//            }
//            row -= 1
//    }
//
//
//    }
//
//    print(matrix[0])
//    print(matrix[1])
//    print(matrix[2])
//    print(matrix[3])
//    print(matrix[4])
////    print(matrix[5])
//    return matrix
//}
//
//solution(n: 5)

//func solвution2(n: Int) -> [[Int]] {
//    var result = [[Int]](repeating: [Int](repeating: 0, count: n), count: n)
//    var counter = 1
//    var i = 0
//    while counter <= n * n {
//        // Left to right
//        var j = i
//        while j < n - i {
//            result[i][j] = counter
//            counter += 1
//            j += 1
//        }
//        // Top to bottom
//        j = i + 1
//        while j < n - i {
//            result[j][n - i - 1] = counter
//            counter += 1
//            j += 1
//        }
//        // Right to left
//        j = n - i - 2;
//        while (j > i) {
//            result[n - i - 1][j] = counter
//            j -= 1
//            counter += 1
//        }
//        // Bottom to top
//        j = n - i - 1;
//        while (j > i) {
//            result[j][i] = counter
//            j -= 1
//            counter += 1
//        }
//        i += 1
//    }
//    return result
//}

//Sudoku is a number-placement puzzle. The objective is to fill a 9 × 9 grid with digits so that each column, each row, and each of the nine 3 × 3 sub-grids that compose the grid contains all of the digits from 1 to 9.
//
//This algorithm should check if the given grid of numbers represents a correct solution to Sudoku.

//var grid = [[1,2,3,4,5,6,7,8,9],
//            [4,6,5,8,7,9,3,2,1],
//            [7,9,8,2,1,3,6,5,4],
//            [1,2,3,4,5,6,7,8,9],
//            [4,6,5,8,7,9,3,2,1],
//            [7,9,8,2,1,3,6,5,4],
//            [1,2,3,4,5,6,7,8,9],
//            [4,6,5,8,7,9,3,2,1],
//            [7,9,8,2,1,3,6,5,4]]
//
//
//func solution(grid: [[Int]]) -> Bool {
//
//    for element in grid {
//        let checkString = element
//        if Set(checkString).count != 9 {
//            return false
//        }
//    }
//
//    var temp: Array<Int> = []
//
//    for i in 0 ..< 9 {
//        for element in grid {
//            temp.append(element[i])
//        }
//        if Set(temp).count != 9 {
//            return false
//        }
//        temp = []
//    }
//
//    var x = 0
//    var y = 0
//    var tempARR : Array <Int> = []
//
//    for _ in 1 ... 3 {
//        let checkStrings = grid[(0 + x) ... (2 + x)]
//        //        print(checkStrings)
//
//        for _ in 1 ... 3 {
//            for element in checkStrings {
//                tempARR += element[(0 + y) ... (2 + y)]
//            }
//            if Set(tempARR).count != 9 {
//                return false
//            }
//            //            print(tempARR)
//            y += 3
//            tempARR = []
//        }
//        y = 0
//        x += 3
//    }
//    return true
//}
//
//
//solution(grid: grid)

//func solution(grid: [[Int]]) -> Bool {
//
//    for i in 0..<9 {
//        var row = [Int]()
//        var col = [Int]()
//        var matrix = [Int]()
//
//        for j in 0..<9 {
//            row.append(grid[i][j])
//            col.append(grid[j][i])
//            matrix.append(grid[i/3*3+j/3][i%3*3+j%3])
//        }
//
//        if (Array(Set(row)).count != 9 ||
//            Array(Set(col)).count != 9 ||
//            Array(Set(matrix)).count != 9) {
//            return false
//        }
//    }
//
//    return true
//}
//
//var x: Int
//var y: Int
//
//var i = 8
//    for j in 0 ..< 9 {
//        x = (i/3*3+j/3)
//        y = (i%3*3+j%3)
//        print(x, y)
//    }
//
//
//var t = 9
//var r = 2
//
//x = (8*3/3 + 8/3)
//x = (8/3*3 + 8/3)

//x = (t/3*3 + r/3)
//y = (t%3*3 + t%3)
//
//t % 3
//t / 3


//You are given a two-digit integer n. Return the sum of its digits.

//func solution(n: Int) -> Int {
//    return Int(String(String(n).first!))! + Int(String(String(n).last!))!
//}
//
//solution(n: 33)
//
//func soldution(n: Int) -> Int {
//    return n/10 + n%10
//}

//Given an integer n, return the largest number that contains exactly n digits.

//func solution(n: Int) -> Int {
//    return Int(pow(10, Float(n))) - 1
//}
//
//solution(n: 2)

//n children have got m pieces of candy. They want to eat as much candy as they can, but each child must eat exactly the same amount of candy as any other child. Determine how many pieces of candy will be eaten by all the children together. Individual pieces of candy cannot be split.

//func solution(n: Int, m: Int) -> Int {
//return (m / n) * n
//}


//Your friend advised you to see a new performance in the most popular theater in the city. He knows a lot about art and his advice is usually good, but not this time: the performance turned out to be awfully dull. It's so bad you want to sneak out, which is quite simple, especially since the exit is located right behind your row to the left. All you need to do is climb over your seat and make your way to the exit.
//
//The main problem is your shyness: you're afraid that you'll end up blocking the view (even if only for a couple of seconds) of all the people who sit behind you and in your column or the columns to your left. To gain some courage, you decide to calculate the number of such people and see if you can possibly make it to the exit without disturbing too many people.
//
//Given the total number of rows and columns in the theater (nRows and nCols, respectively), and the row and column you're sitting in, return the number of people who sit strictly behind you and in your column or to the left, assuming all seats are occupied.

//func solution(nCols: Int, nRows: Int, col: Int, row: Int) -> Int {
//return (nRows - row) * (nCols - col + 1)
//}

//Given a divisor and a bound, find the largest integer N such that:
//
//N is divisible by divisor.
//N is less than or equal to bound.
//N is greater than 0.
//It is guaranteed that such a number exists.

//func solution(divisor: Int, bound: Int) -> Int {
//var answer = bound
//    while answer % divisor != 0 {
//        answer -= 1
//    }
//    return answer
//}
//
//solution(divisor:3, bound: 10)
//
//func soldution(divisor: Int, bound: Int) -> Int {
//    return bound - bound%divisor
//}

//Consider integer numbers from 0 to n - 1 written down along the circle in such a way that the distance between any two neighboring numbers is equal (note that 0 and n - 1 are neighboring, too).
//
//Given n and firstNumber, find the number which is written in the radially opposite position to firstNumber.

//func solution(n: Int, firstNumber: Int) -> Int {
//    return firstNumber >= (n / 2) ? firstNumber - (n / 2) : firstNumber + (n / 2)
//}
//
//func solddution(n: Int, firstNumber: Int) -> Int {
//    return (firstNumber + n / 2) % n
//}

//One night you go for a ride on your motorcycle. At 00:00 you start your engine, and the built-in timer automatically begins counting the length of your ride, in minutes. Off you go to explore the neighborhood.
//
//When you finally decide to head back, you realize there's a chance the bridges on your route home are up, leaving you stranded! Unfortunately, you don't have your watch on you and don't know what time it is. All you know thanks to the bike's timer is that n minutes have passed since 00:00.
//
//Using the bike's timer, calculate the current time. Return an answer as the sum of digits that the digital timer in the format hh:mm would show.

//func solution(n: Int) -> Int {
//var array = [Int]()
//    array.append(n / 60)
//    array.append(n % 60)
//    return array[0] / 10 + array[0] % 10 + array[1] / 10 + array[1] % 10
//}
//
//solution(n: 808)
//
//func solutffion(n: Int) -> Int {
//    return (n / 60) / 10 + (n / 60) % 10 + (n % 60) / 10 + (n % 60) % 10
//}

//Some phone usage rate may be described as follows:
//
//first minute of a call costs min1 cents,
//each minute from the 2nd up to 10th (inclusive) costs min2_10 cents
//each minute after 10th costs min11 cents.
//You have s cents on your account before the call. What is the duration of the longest call (in minutes rounded down to the nearest integer) you can have?

//func solution(min1: Int, min2_10: Int, min11: Int, s: Int) -> Int {
//    guard s > min1 else {
//        return 0
//    }
//    var money = s - min1
//    var minutes = 1
//
//    for _ in 1 ..< 10 {
//        if money < 0 {
//            return minutes
//        }
//        money -= min2_10
//        minutes += 1
//    }
//
//    while money >= min11 {
//        money -= min11
//        minutes += 1
//    }
//    return minutes
//}
//
//solution(min1: 3, min2_10: 1, min11: 2, s: 20)

//You are playing an RPG game. Currently your experience points (XP) total is equal to experience. To reach the next level your XP should be at least at threshold. If you kill the monster in front of you, you will gain more experience points in the amount of the reward.
//
//Given values experience, threshold and reward, check if you reach the next level after killing the monster.

//function solution(experience, threshold, reward) {
//    return experience+reward>=threshold
//}

//You found two items in a treasure chest! The first item weighs weight1 and is worth value1, and the second item weighs weight2 and is worth value2. What is the total maximum value of the items you can take with you, assuming that your max weight capacity is maxW and you can't come back for the items later?
//
//Note that there are only two items and you can't bring more than one item of each type, i.e. you can't take two first items or two second items.

//func solution(value1: Int, weight1: Int, value2: Int, weight2: Int, maxW: Int) -> Int {
//    if (weight2 + weight1) <= maxW {
//        return value2 + value1
//    } else if [weight2, weight1].max()! <= maxW {
//        return [value1, value2].max()!
//    } else if weight1 <= maxW {
//        return value1
//    } else if weight2 <= maxW {
//        return value2
//    } else {
//        return 0
//    }
//}

//You're given three integers, a, b and c. It is guaranteed that two of these integers are equal to each other. What is the value of the third integer?

//func solution(a: Int, b: Int, c: Int) -> Int {
//    return a == b ? c : (a == c ? b : a)
//}
//
//func soludtion(a: Int, b: Int, c: Int) -> Int {
//    /// ^ XOR operator
//  return a^b^c
//}


