//: [Previous](@previous)

import Foundation



// changing weights
//https://www.codewars.com/kata/55c6126177c9441a570000cc/train/swift
// подумать про алгоритм сортировки
// не решено там где нужно первое число сравнивать 

//friend John and I are members of the "Fat to Fit Club (FFC)". John is worried because each month a list with the weights of members is published and each month he is the last on the list which means he is the heaviest.
//
//I am the one who establishes the list so I told him: "Don't worry any more, I will modify the order of the list". It was decided to attribute a "weight" to numbers. The weight of a number will be from now on the sum of its digits.
//
//For example 99 will have "weight" 18, 100 will have "weight" 1 so in the list 100 will come before 99.
//
//Given a string with the weights of FFC members in normal order can you give this string ordered by "weights" of these numbers?


//let sdf = "2000 10003 1234000 44444444 9999 11 11 22 123"
//var arrayString = sdf.components(separatedBy: " ")
//var arrayIntStart = arrayString.map { Int($0)! }
//var arrayStringFinal = arrayString
//var arrayIntFinal : [Int] = []
//
//arrayStringFinal.forEach {
//    let element = $0
//    var value = 0
//    for part in element {
//        value += Int(String(part))!
//    }
//    arrayIntFinal.append(value)
//    value = 0
//}
//
//
//
//
//print(sdf)
//print(arrayString)
//print(arrayIntStart)
//print(arrayIntFinal)
//
//for _ in 1 ... 10 {
//    for i in 0 ... arrayIntFinal.count - 2 {
//        var tmpA = 0
//        var tmpB = 0
//        if arrayIntFinal[i] > arrayIntFinal[i + 1] {
//            tmpA = arrayIntFinal[i]
//            arrayIntFinal[i] = arrayIntFinal[i + 1]
//            arrayIntFinal[i + 1] = tmpA
//
//            tmpB = arrayIntStart[i]
//            arrayIntStart[i] = arrayIntStart[i + 1]
//            arrayIntStart[i + 1] = tmpB
//        }
//        tmpA = 0
//        tmpB = 0
//    }
//}
//
//print(arrayIntStart)
//print(arrayIntFinal)
//
//
//for _ in 1 ... 10 {
//    for i in 0 ... arrayIntFinal.count - 2 {
//        var tmpA = 0
//        var tmpB = 0
//        if arrayIntFinal[i] > arrayIntFinal[i + 1] {
//            tmpA = arrayIntFinal[i]
//            arrayIntFinal[i] = arrayIntFinal[i + 1]
//            arrayIntFinal[i + 1] = tmpA
//
//            tmpB = arrayIntStart[i]
//            arrayIntStart[i] = arrayIntStart[i + 1]
//            arrayIntStart[i + 1] = tmpB
//        }
//        tmpA = 0
//        tmpB = 0
//    }
//}



//func orderWeight(_ s: String) -> String {
//    var arrayStart = s.components(separatedBy: " ")
//    var arrayIntStart = arrayStart.map { Int($0)! }
//    var arrayStringFinal = arrayStart
//    var arrayIntFinal : [Int] = []
//    var stringFinal = ""
//
//    arrayStringFinal.forEach {
//        let element = $0
//        var value = 0
//        for part in element {
//            value += Int(String(part))!
//        }
//        arrayIntFinal.append(value)
//        value = 0
//    }
//
//    for _ in 1 ... 10 {
//        for i in 0 ... arrayIntFinal.count - 2 {
//            var tmpA = 0
//            var tmpB = 0
//            if arrayIntFinal[i] > arrayIntFinal[i + 1] {
//                tmpA = arrayIntFinal[i]
//                arrayIntFinal[i] = arrayIntFinal[i + 1]
//                arrayIntFinal[i + 1] = tmpA
//
//                tmpB = arrayIntStart[i]
//                arrayIntStart[i] = arrayIntStart[i + 1]
//                arrayIntStart[i + 1] = tmpB
//            }
//            tmpA = 0
//            tmpB = 0
//        }
//    }
//
//    for element in arrayIntStart {
//        stringFinal += (String(element) + " ")
//    }
//    stringFinal.removeLast()
//    return (stringFinal)
//}
//
//print(orderWeight("88 33 22 55 11 44"))


// space x
//The master launch sequence consists of several independent sequences for different systems. Your goal is to verify that all the individual system sequences are in strictly increasing order. In other words, for any two elements i and j (i < j) of the master launch sequence that belong to the same system (having systemNames[i] = systemNames[j]), their values should be in strictly increasing order (i.e. stepNumbers[i] < stepNumbers[j]).

//https://app.codesignal.com/company-challenges/spacex/EcQD8xYZotKM77FKM

// долгий алгоритм но работает

//func solutioтn(systemNames: [String], stepNumbers: [Int]) -> Bool {
//    guard systemNames.count > 1 else {
//        return true
//    }
//    guard Set(systemNames).count > 1 else {
//        return stepNumbers == stepNumbers.sorted() && Set(stepNumbers).count == stepNumbers.count
//    }
//
//    var checked: Array<String> = []
//
//    for i in 0 ..< systemNames.count {
//        let element = systemNames[i]
//
//        if checked.contains(element) {
//            continue
//        }
//
//        checked.append(element)
//        var max = stepNumbers[i]
//        for j in (1 + i) ..< systemNames.count {
//            if systemNames[j] == element && stepNumbers[j] > max {
//                max = stepNumbers[j]
//            } else if systemNames[j] == element && max >= stepNumbers[j] {
//                return false
//            }
//        }
//        max = 0
//    }
//    return true
//}
//
//solution(systemNames: ["Dragon",
//                       "Dragon",
//                       "Dragon",
//                       "Dragon",
//                       "dragon",
//                       "Dragon",
//                       "dragon"], stepNumbers: [1, 3, 5, 7, 7, 9, 8])
//
//// намного лучше но не до конца 14/16
//
//func solution(systemNames: [String], stepNumbers: [Int]) -> Bool {
//    //    var numb = Array(repeating: Array(repeating: 0, count: (systemNames.count)), count: systemNames.count)
//    var numb = [[Int]]()
//
//    for i in 0 ..< systemNames.count {
//        let element = stepNumbers[i]
//        let position = systemNames.firstIndex(of: systemNames[i])!
//        numb.append([])
//        if numb[position].contains(element) {
//            return false
//        }
//        let max = numb[position].max() ?? 0
//        if max > element {
//            return false
//        }
//        numb[position].append(element)
//    }
//
////    for element in numb {
////        if element != Array(Set(element).sorted()) {
////            return false
////        }
////    }
//
//    return true
//}

// лучшая попытка 15/16

//func solution(systemNames: [String], stepNumbers: [Int]) -> Bool {
//    var numb = [[Int]]()
//
//    for i in 0 ..< systemNames.count {
//        let element = stepNumbers[i]
//        let position = systemNames.firstIndex(of: systemNames[i])!
//        numb.append([0])
//        if numb[position].contains(element) {
//            return false
//        }
//        numb[position].append(element)
//        if numb[position] != numb[position].sorted() {
//            return false
//        }
//    }
//    return true
//}

// еще лучше но но прокатывает

//func solution(systemNames: [String], stepNumbers: [Int]) -> Bool {
//    var numb = [Int]()
//    var checked = [String]()
//
//    for i in 0 ..< systemNames.count {
//        if !checked.contains(systemNames[i]) {
//            numb.append(0)
//            checked.append(systemNames[i])
//        }
//        let element = stepNumbers[i]
//        let position = checked.firstIndex(of: systemNames[i])!
//        if numb[position] < element {
//            numb[position] = element
//        } else {
//            return false
//        }
//    }
//    return true
//}
//
//if arr contains an odd number of elements, its middle is the element whose index number is the same when counting from the beginning of the array and from its end;
//if arr contains an even number of elements, its middle is the sum of the two elements whose index numbers when counting from the beginning and from the end of the array differ by one.
//Given array arr, your task is to find its middle, and, if it consists of two elements, replace those elements with the value of middle. Return the resulting array as the answer.


// sberfight
//Сегодня Аристократия организовывает пир. Мы знаем количество гостей, ваша задача рассадить всех за стол.
//
//Однако, некоторые гости дали вам список неприятелей, с которыми они не сядут.
//
//Стулья расставили так, что у стола оказалось два крайних места, у которых только один соседний гость. В остальных случаях соседа два.
//
//Определите, можно ли рассадить гостей так, чтобы все оказались довольны.
//
//Ввод:
//
//invited_list -  количество приглашённых гостей,  0<invited_list<10
//dislike_list - строчный массив неприятелей, ["1-2,3"] - означает, что гость под номером 1 не сядет с гостями 2 и 3
//Вывод:
//
//Boolean - возможно ли рассадить гостей так, чтобы они все были довольны

//func getResult(invitedList: Int, dislikeList: [String]) -> Bool {
//
//    var list = Array(repeating: 0, count: invitedList)
//    var note = Array(1 ... invitedList)
//
//    var dislikes = dislikeList.map { $0.components(separatedBy: "-")}
//    var tt = dislikes.map {$0[1].components(separatedBy: ",") }
//
//    note.
//
//    return false
//}
//
//getResult(invitedList: 4, dislikeList: ["1-2,3", "3-4"])
