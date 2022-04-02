//import UIKit
//import Foundation
//
//var greeting = "Hello, playground"
///////////////////////////////
/// don't give me five
/// проверить содержит ли число 5 в любом из мест

//func doNotGive5(_ a: Int, _ b: Int) -> Int {
//    var count : Int = 0
//    var str : String
//    for i in a...b {
//       str = String(i)
//        if str.contains("5") {
//            continue
//        } else {
//            count += 1
//        }
//    }
//    return count
//}
//
//doNotGive5(-1, 3)
//
//func dontGiveMeFive(_ start: Int, _ end: Int) -> Int {
//  return (start...end).filter { !String($0).contains("5") }.count
//}
//
//dontGiveMeFive(2, 61)

// missing letter
// найти пропавшую букву в последовательности
// после месяца в своем кривом коде сложно разобраться

//func findMissingLetter (_ cgArr: [Character]) -> Character {
//    var temp : Int
//    var needToBefind : Character = "1"
//    let charMin : Array <Character> = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
//    let charMax : Array <Character> = ["A", "B", "C", "D", "E", "F", "G", "H", "I" , "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
//
//    if charMin.contains(cgArr[0]) {
//        for j in 0 ... charMin.count - 1 {
//            if charMin[j] != cgArr[0] {
//                continue
//            } else {
//                temp = j
//                for x in 0 ... cgArr.count - 1 {
//                    if cgArr[x] == charMin[x + temp] {
//                        continue
//                    } else {
//                        needToBefind = charMin[x + temp]
//                        break
//                    }
//                }
//            }
//        }
//    } else {
//        for j in 0 ... charMax.count - 1 {
//            if charMax[j] != cgArr[0] {
//                continue
//            } else {
//                temp = j
//                for x in 0 ... cgArr.count - 1 {
//                    if cgArr[x] == charMax[x + temp] {
//                        continue
//                    } else {
//                        needToBefind = charMax[x + temp]
//                        break
//                    }
//                }
//            }
//        }
//    }
//    return needToBefind
//}
//
//let che : Array <Character> = ["b", "d", "f", "e"]
//findMissingLetter(che)
//
//
//func findMissinьgLetter(_ chArr: [Character]) -> Character {
//  for char in chArr {
//    let next = Character(UnicodeScalar(char.asciiValue! + 1))
//    if !chArr.contains(next) { return next }
//  }
//  return Character("")
//}


// mask for credit card
// скрыть символы кроме 4 последних


//func mask (_ string : String) -> String {
//    var newArr : Array <Character> = []
//    var ele : Character
//    var str = ""
//    for element in string {
//        newArr.append(element)
//    }
//    if newArr.count > 4 {
//        for i in 0 ... newArr.count - 5 {
//            newArr[i] = "#"
//        }
//        for element in newArr {
//            str += String(element)
//        }
//    } else {
//        str = string
//    }
//    return str
//}
//
//func maskify3(_ string:String) -> String {
//  let last4Index = string.count - 4
//  let maskedString = String(string.enumerated().map { (index, element) -> Character in
//    return index < last4Index ? "#" : element
//  })
//  return maskedString
//}
//
//func maskify4(_ string:String) -> String {
//  string.enumerated().map { $0 < string.count - 4 ? "#" : "\($1)"}.joined()
//}
//
//mask("yymnljkjkhvbkvnmy")

//var a : Character = "4"
//var b = 0
//b = Int(a) ?? 0

// pow every number
// возвести в квадрат каждую цифру числа

//func squareDigits (_ num: Int) -> Int {
//    var resultInt = 0
//    var arrayStr : String = ""
//    let strInt = String(num)
////    var newStrInt = strInt.map({(value: Character) -> Int in
////        return Int(value) * Int(value)})
//    for element in strInt {
//        let res = String(element)
//        let resint = Int(res) ?? 0
//        arrayStr += String(resint * resint)
//
//    }
//    resultInt = Int(arrayStr) ?? 0
//    return resultInt
//}
//
//squareDigits(440)
//
//func squareDi4gits(_ num: Int) -> Int {
//    Int(String(num).compactMap() {
//        String(Int(pow(Double(String($0))!, 2)))
//    }.joined())!
//}
//
//squareDigits(56565)

// changing weights
//https://www.codewars.com/kata/55c6126177c9441a570000cc/train/swift

//var str = "19 12 44"
//
//var arr2 = [2, 4, 6, 7]
//var arr3 = [3, 5, 88, 3]
//
//let arr32 = zip(arr2, arr3)
//let dict2 = Dictionary(uniqueKeysWithValues: arr32)
//
//
//func orderWeight(_ s: String) -> Dictionary<Int, Int>.Element {
//    ///kostyl
//    let newS = s + " "
//    var numStr : String = ""
//    var newInt: Int = 0
//    var strFinal = ""
//    var arrayOfint : Array <Int> = []
//    var arrayOfintSum : Array <Int> = []
//    var dict : Dictionary <Int, Int> = [:]
//
//    for number in newS {
//        if number != " " {
//            numStr += String(number)
//        } else {
//            arrayOfint.append(Int(numStr) ?? 0)
//            numStr = ""
//            continue
//        }
//    }
//
//    for i in 0 ... arrayOfint.count - 1 {
//        let strCha = String(arrayOfint[i])
//        for ele in strCha {
//            newInt += Int(String(ele)) ?? 0
//        }
//        arrayOfintSum.append(newInt)
//        newInt = 0
//    }
//
//    let tempArray = zip(arrayOfint, arrayOfintSum)
//
//    dict = Dictionary(uniqueKeysWithValues: tempArray)
//    var dictSorted : Dictionary <Int, Int> = [:]
//      dictSorted = dict.sorted(by: {$0.1 < $1.1})
//
//
//    for element in dict.
//
//}
//
//let bb = orderWeight(str)
//print(bb)



///print("  *\n ***\n*****\n ***\n  *\n")
/// dimonds printing
///https://www.codewars.com/kata/5503013e34137eeeaa001648/train/swift


//func dimond(_ size: Int?) -> String? {
//    var num = 1
//    let charEmpt = " "
//    let charStar = "*"
//    let charJump = "\n"
//    var stringFinal = ""
//
//
//    if size! % 2 == 0 || size! <= 0 {
//        return nil
//    } else {
//        for _ in 1 ... size! {
//            if num < size! {
//                for _ in 1 ... ((size! - num) / 2) {
//                stringFinal += charEmpt
//            }
//                for _ in 1 ... num {
//                    stringFinal += charStar
//                }
//                stringFinal += charJump
//                num += 2
//            } else if num == size {
//                for _ in 1 ... size! {
//                    stringFinal += charStar
//                }
//                stringFinal += charJump
//                num += 2
//            } else {
//                for _ in 1 ... -((size! - num) / 2) {
//                    stringFinal += charEmpt
//                }
//                for _ in 1 ... ((size! * 2) - num) {
//                    stringFinal += charStar
//                }
//                stringFinal += charJump
//                num += 2
//
//            }
//    }
//
//
//}
//    return stringFinal
//}
//
//print (dimond(17) ?? "")

//func diamond(_ size: Int) -> String? {
//    guard size > 0 && size % 2 == 1 else {
//        return nil
//    }
//    var diamond = ""
//    let centerRow = size/2 + 1
//    for row in 1...size {
//        let spaces = abs(centerRow - row)
//        diamond += String(repeating: " ", count: spaces) + String(repeating: "*", count: size-spaces*2) + "\n"
//    }
//    return diamond
//}

//func diamond(_ size: Int) -> String? {
//  guard size > 0 && size % 2 == 1 else { return nil }
//  var dmnd = ""
//  let centerRow = size/2 + 1
//  (1...size).forEach {
//    let spc = abs(centerRow - $0)
//    dmnd += String(repeating: " ", count: spc) + String(repeating: "*", count: size-spc * 2) + "\n"
//  }
//  return dmnd
//}


// the walker

//let a = 12.0 * cos(45.0 * Double.pi / 180)
//let b = 12.0 * sin(45.0 * Double.pi / 180)
//
//func solve(_ a: Int, _ b: Int, _ c: Int, _ alpha: Int, _ beta: Int, _ gamma: Int) -> [Int] {
//    let pi180 = 3.14159265358979323846 / 180.0
//    var answer = [Int]()
//    let pointX = Double(a) * cos(Double(alpha) * pi180) - Double(b) * sin(Double(beta) * pi180) - Double(c) * cos(Double(gamma) * pi180)
//    let pointY = Double(a) * sin(Double(alpha) * pi180) + Double(b) * cos(Double(beta) * pi180) - Double(c) * sin(Double(gamma) * pi180)
//    let distanceOC = (sqrt(pow(pointX, 2) + pow(pointY, 2)))
//    let distanceOCy = Int(distanceOC.rounded(.toNearestOrAwayFromZero))
//    answer.append(distanceOCy)
//
//    let tngF = pointY / pointX
//    let anglF = atan(tngF) / pi180
//    let angCherch = 180.0 + anglF
//    let answInMin = 60.0 * (angCherch - Double(Int(angCherch)))
//    let answInSec = 60.0 * (answInMin - Double(Int(answInMin)))
//    answer.append(Int(angCherch))
//    answer.append(Int(answInMin))
//    answer.append(Int(answInSec))
//    return answer
//}
//
//solve(15, 15, 19, 50, 29, 55)
//dotest(15,15,19,50,29,55, [12, 133, 18, 44])


// find 3 and 5 multiplies

//func solution (_ num: Int) -> Int {
//    var answ = 0
//    if num > 0 {
//    for i in 0 ... num - 1 {
//        if i % 3 == 0 || i % 5 == 0 {
//            answ += i
//        }
//    }
//    return answ
//    } else {
//        return 0
//    }
//}
//
//solution(200)
//
//func solutio3n(_ num: Int) -> Int {
//  return (0..<num).filter { ($0 % 3 * $0 % 5) == 0 }.reduce(0, +)
//}
//
//func solutsion(_ num: Int) -> Int {
//  var sum = 0
//  for i in 0..<num {
//    if (i % 3 == 0) || (i % 5 == 0) {
//      sum += i
//    }
//  }
//  return num > 0 ? sum : 0
//}

// calculate averege - perfect

//func calculateAvr (_ marks: [Int]) -> Int {
//    var avrMark = 0
//    avrMark = (marks.reduce(0, +) / marks.count)
//    return avrMark
//}
//
//let arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
//calculateAvr(arr)

// jumpingNumber

//func jumpingNumber (_ number: Int) -> String {
//    var strNum = String(number)
//    var arrNum : Array<Int> = []
//    var strReturn = ""
//    for element in strNum {
//        arrNum.append(Int(String(element))!)
//    }
//
//    if arrNum.count == 1 {
//        strReturn = "Jumping!!"
//    } else {
//        for i in 1 ... arrNum.count - 1 {
//            if abs(arrNum[i] - arrNum[i - 1]) == 1  {
//                strReturn = "Jumping!!"
//            } else {
//                strReturn = "Not!!"
//                break
//            }
//        }
//    }
//    return strReturn
//}
//
//jumpingNumber(89098)
//
//func jumpinegNumber(_ number: Int) -> String {
//  let numbers = String(number).compactMap { c in c.wholeNumberValue };
//  for i in 1..<numbers.count {
//      if abs(numbers[i - 1] - numbers[i]) != 1 {
//          return "Not!!";
//      }
//  }
//  return "Jumping!!";
//}
//
//
//
