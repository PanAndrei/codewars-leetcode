//: [Previous](@previous)

import Foundation


//
//
//
//func getResult(cave: [Int]) -> Int {
//    var index = cave.firstIndex(of: -1)
//    var arrayInd = [Int]()
//    while index != nil {
//        if let newInd = index {
//            arrayInd.append(newInd)
//        }
//        index = cave.firstIndex(of: index!)
//    }
//    return arrayInd.last!
//}
//
//
//
//getResult(cave: [1, -1, 1, 2])
//
//func getResult1(cave: [Int]) -> Int {
//    let firstIndex = cave.firstIndex(of: -1)!
//    var arr = [Int]()
//
//    for i in 0 ..< cave.count {
//        if cave[i] == firstIndex {
//            arr.append(i)
//        }
//    }
//
//    return 0
//}

//В анонимном клубе воров присутствуют n человек. У вас есть массив cash, который содержит богатство каждого вора.
//
//Каждый вор может украсть у других не более k монет. Определите, какой вор может стать самым богатым в клубе.
//
//На входе:
//
//cash - количество монет у каждого вора (integer[])
//k - сколько монет каждый вор может украсть у других в сумме (integer)
//На выходе:
//
//Integer[] - номера воров, которые могут стать самыми богатыми, отсчёт начинается с единицы

// не проходит тесты когда надо равномерно вычитаь
//func getResult(cash: [Int], k: Int) -> [Int] {
//    var result = [Int]()
//    var newCash = cash
//    for i in 0 ..< cash.count  {
//        newCash.remove(at: i)
//        let max = newCash.max()!
//        let index = newCash.firstIndex(of: max)!
//        newCash[index] -= 2
//        print((cash[i] + k), (newCash.max()!))
//        if (cash[i] + k) > (newCash.max()!) {
//            result.append(i + 1)
//        }
//        newCash = cash
//    }
//    return result
//}
//
//getResult(cash: [1, 7, 8, 3, 4], k: 3)

//Вы сравниваете возраст и имя с паспортными данными и принимаете решение – впустить человека в страну или нет. Впускаем в страну, когда данные совпадают.
//
//Однако, вы можете расслышать имя неправильно. Если ошибка в имени одна (не хватает буквы, лишняя буква или одна буква другая), то считайте вам сказали правду. Регистр букв в имени не учитывается.
//
//На входе:
//
//calendar – нынешний год (integer)
//date_of_birth – год рождения в паспорте (integer)
//name – имя человека в паспорте (string).
//phrases – строковый массив – показания человека phrases[a, b], где a – возраст человека, b–имя.
//На выходе:
//
//Boolean – решение, которые вы приняли (True – впустить, False – нет, то есть если возраст не соответствует паспортным данным или различий в имени больше одного)
//Пример:
//
//calendar = 1984
//date_of_birth =1950
//name =“Anna”
//phrases = [“34”, “Ana”]
//getResult(calendar , date_of_birth, name, phrases) =True

//
//func getResult(calendar: Int, dateOfBirth: Int, name: String, phrases: [String]) -> Bool {
//    guard Int(phrases[0])! == calendar - dateOfBirth else { return false }
//
//    if name.lowercased() == phrases[1].lowercased() {
//        return true
//    }
//
//    var newName = name.lowercased().map { String($0) }
//    var toldName = phrases[1].lowercased().map { String($0) }
//
//    if newName.count > toldName.count {
//        for element in newName {
//            let indexNew = newName.firstIndex(of: element)!
//            if toldName.contains(element) {
//                let indexTold = toldName.firstIndex(of: element)!
//                newName.remove(at: indexNew)
//                toldName.remove(at: indexTold)
//            }
//        }
//    } else {
//        for element in toldName {
//            let indexTold = toldName.firstIndex(of: element)!
//            if newName.contains(element) {
//                let indexNew = newName.firstIndex(of: element)!
//                newName.remove(at: indexNew)
//                toldName.remove(at: indexTold)
//            }
//        }
//    }
//    return abs(newName.count - toldName.count) <= 1
//}
//
//getResult(calendar: 1984, dateOfBirth: 1950, name: "Anna", phrases: ["34", "Anmnna"])
