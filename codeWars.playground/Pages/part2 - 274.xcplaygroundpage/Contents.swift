//: [Previous](@previous)

import Foundation


//: [Next](@next)

// primal integers
// по хоже тут найти первых два простых числа в диапазоне с разницей в Гап

//Int(sqrt(Double(element + g)))

//func gap(_ g: Int, _ m: Int, _ n:Int) -> (Int, Int)? {
//    var answer : (Int, Int)? = (0, 0)
//    var arrayI : Array<Int> = []
//    guard g >= 2, m > 2, n > m else {
//        print("enter valid numbers")
//        return nil
//    }
//    primal:  for element in m ... n {
//        var count = 1
//        for i in 2 ... Int(sqrt(Double(element))) {
//            count += 1
//// а еще можно через 2 перескакивать тк четность
//            if (element %  i == 0) {
//                continue primal
//            } else if count == Int(sqrt(Double(element))) {
//                arrayI.append(element)
//            }
//        }
//        count = 2
//    }
//    var niva = 0
//    for j in 0 ... arrayI.count - 2 {
//        niva = arrayI[j + 1] - arrayI[j]
//        if niva != g {
//            niva = 0
//            continue
//        } else {
//            answer?.0 = Int(arrayI[j])
//            answer?.1 = Int(arrayI[j + 1])
//            break
//        }
//    }
//    if answer?.0 ?? 0 > 1 {
//        return answer
//    } else {
//        return nil
//    }
//}
//
//gap(2, 9, 110)
//
//func gap3(_ g: Int, _ m: Int, _ n: Int) -> (Int, Int)? {
//  guard g % 2 == 0 else { return nil }
//  let primes = (m...n).lazy.filter(isPrime)
//  return zip(primes, primes.dropFirst()).first(where: { $0.1 - $0.0 == g })
//}
//
//func isPrime(_ n: Int) -> Bool {
//  return (2...Int(Double(n).squareRoot())).lazy.filter({ n % $0 == 0 }).first == nil
//}


// disarium numbers 13

//func disariumNumber (_ number: Int) -> String {
//    let num = String(number)
//    var arr : Array <Int> = []
//    for char in num {
//        arr.append(Int(String(char))!)
//    }
//    var check = 0.0
//    for i in 0 ... arr.count - 1 {
//        check += pow(Double(arr[i]), Double(i + 1))
//    }
//    return Int(check) == number ? "Disarium !!" : "Not !!"
//}
//
//func disarwiumNumber(_ number: Int) -> String {
//    let numberArr = String(number).compactMap { Int(String($0)) }
//    let ret = numberArr.enumerated().map { (i, n) in Int(pow(Double(n), Double(i + 1))) }.reduce(0, +)
//    return ret == number ? "Disarium !!" : "Not !!"
//}
//
//disarwiumNumber(89)
//disariumNumber(133)


// balanced number

//func balancedNumber(_ number: Int) -> String {
//    let numberArr = String(number).compactMap { Int(String($0)) }
//
//    var left = 0
//    var right = 0
//
//    if numberArr.count == 1 || numberArr.count == 2 {
//        return "Balanced"
//    } else if (numberArr.count % 2 == 0) {
//        for i in 0 ... (numberArr.count / 2) - 2 {
//            left += numberArr[i]
//        }
//        for i in ((numberArr.count / 2) + 1) ... (numberArr.count - 1) {
//            right += numberArr[i]
//        }
//    } else if (numberArr.count % 2 != 0) {
//        for i in 0 ... ((numberArr.count - 1) / 2) - 1 {
//            left += numberArr[i]
//        }
//        for i in ((numberArr.count + 1) / 2) ... (numberArr.count - 1) {
//            right += numberArr[i]
//        }
//    }
//   return left == right ? "Balanced" : "Not Balanced"
//}
//
//balancedNumber(1024)
//balancedNumber(262)
//
//func baleancedNumber(_ number: Int) -> String {
//  let n = String(number).map({ Int(String($0))! })
//  guard n.count > 2 else { return "Balanced" }
//  let fn = Array(n[0 ..< n.count/2-(n.count%2 == 0 ? 1 : 0)]).reduce(0, +)
//  let ln = Array(n[n.count/2+1 ..< n.count]).reduce(0,+)
//  return (fn != ln ? "Not " : "") + "Balanced"
//}

// secolo 15

//func centuryFromYear(year: Int) -> Int {
//let yearD : Double = Double(year) / 100
//let secD = yearD.rounded(.up)
//let secI = Int(secD)
//return secI
//}
//
//centuryFromYear(year: 1701)
//
//func centdduryFromYear(year: Int) -> Int {
//    return (year + 99) / 100
//}

// palindrom 16

//func checkPalindrome(inputString: String) -> Bool {
//    guard inputString.count > 1 else {
//        return true
//    }
//
//    var arr : Array <String> = []
//    for char in inputString {
//        arr.append(String(char))
//    }
//
//    for i in 0 ... arr.count - 1 {
//        if arr[i] != arr[(arr.count - 1) - i] {
//            return false
//            break
//        } else {
//        }
//    }
//    return true
//}
//
//checkPalindrome(inputString: "dde")
//
//func checkfPalindrome(inputString: String) -> Bool {
//  return String(inputString.characters.reverse()) == inputString
//}

// closed elements 17

//func adjacentElementsProduct(_ arr: [Int]) -> Int {
//    var answ = Int.min
//    for i in 0 ... arr.count - 1 {
//        if i == arr.count - 1 {
//            return answ
//        }
//        if arr[i] * arr[i + 1] > answ {
//            answ = arr[i] * arr[i + 1]
//        }
//    }
//    return answ
//}
//
//adjacentElementsProduct([1, 3, 5, 3, 7, 9, -1, -9, 9])
//
//func adjacentElemenftsProduct(inputArray: [Int]) -> Int {
//    return (0..<inputArray.count - 1).map { inputArray[$0] * inputArray[$0 + 1] }.max()!
//}

// n - polygon 18

//func shapeArea(n: Int) -> Int {
//    return (n * n) + ((n - 1) * (n - 1))
//}


// status of gifts

//func makeArrayConsecutive2(statues: [Int]) -> Int {
//    return (statues.max()! - statues.min()!) - statues.count + 1
//}
//
//
//makeArrayConsecutive2(statues: [6, 2, 3, 8])

// remove one element

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

/// matrix and gosts

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

/// return longest string

//func allLongestStrings(inputArray: [String]) -> [String] {
//    var answerArr : Array <String> = []
//    var lenghOfElement = 0
//    for element in inputArray {
//        if element.count > lenghOfElement {
//            lenghOfElement = element.count
//        }
//    }
//    for element in inputArray {
//        if element.count == lenghOfElement {
//            answerArr.append(element)
//        }
//    }
//    return answerArr
//}
//
//func allLongestSfftrings(inputArray: [String]) -> [String] {
//    let longest = inputArray.map{$0.utf8.count}.maxElement()!
//    return inputArray.filter{$0.utf8.count == longest}
//}
//
//func allLong444estStrings(inputArray: [String]) -> [String] {
//    return inputArray.filter { $0.characters.count == inputArray.map { $0.characters.count }.max() }
//}

/// common characters

//var s1ed =  "abaca", s2 = "abaac"
//var dfda = Array(s1ed), adf = Array(s2)
//dfda.sorted() == adf.sorted()
//
//func commonCharacterCount(s1: String, s2: String) -> Int {
//    var count = 0
//    var arr1 = Array(s1)
//    var arr = Array(s2)
//    if arr1.sorted() == arr.sorted() {
//        return arr.count
//    }
//    nest:  for element in arr1 {
//        for i in 0 ... arr.count - 1  {
//            if element == arr[i] {
//                arr.remove(at: i)
//                count += 1
//                if arr.count - 1 > 0 {
//                    continue nest
//                } else {
//                    break nest
//                }
//            }
//        }
//    }
//    return count
//}
//
//commonCharacterCount(s1: "abaca", s2: "abaac")
//
//func commovvnCharacterCount(s1: String, s2: String) -> Int {
//
//    var mutableFirstString = s1
//    var counter = 0
//    s2.characters.forEach {
//        if let index = mutableFirstString.characters.indexOf($0) {
//            counter = counter + 1
//            mutableFirstString.removeAtIndex(index)
//        }
//    }
//
//    return counter
//}
//
//commovvnCharacterCount(s1: "abaca", s2: "abaac")
