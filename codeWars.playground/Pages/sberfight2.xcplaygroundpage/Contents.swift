//: [Previous](@previous)

import Foundation
import Darwin


//Задание
//Консоль
//В точке (0,0) у нас расположен датчик с областью действия в виде круга с радиусом r. На каждом пропуске есть передатчик. При поднесении пропуска, как только координаты передатчика (точка с координатами x,y) попадают в область действия датчика, офис СберМаркета открывается. Определите, сработает ли пропуск, если мы знаем координаты x, y и радиус действия r датчика.
//
//Ввод:
//
//i=[x,y] - координаты точки (integer)
//r - радиус круга (integer)
//Вывод:
//
//boolean - откроется ли доступ в офис

//func getResult(i: [Int], r: Int) -> Bool {
//
//    return sqrt(Double (i[0] * i[0]) + Double(i[1] * i[1])) <= Double(r)
//
//}
//
//getResult(i: [3, 4], r: 2)

//Рорти, портальная пушка готова! А вот подключить блокчейн.... Рорти, я запутался с координатами. У меня есть целый массив возможных координат, а мне нужны только три: X, Y, Z. Еще я знаю, что правильные - это всегда те три координаты, произведение которых будет максимальным. Теперь для проверки осталось вывести это произведение координат.
//
//Ввод:
//
//array - массив из возможных координат (integer)
//Вывод:
//
//integer - произведение трех координат

//func getResult(array: [Int]) -> Int {
//    var arr = array.sorted(by: >)
//    var answer = 1
//
//    if arr[0] * arr[1] > arr[arr.count - 1] * arr[arr.count - 2] {
//        answer = arr[0] * arr[1]
//        arr.remove(at: 0)
//        arr.remove(at: 0)
//    } else {
//        print(arr)
//        answer = arr[arr.count - 1] * arr[arr.count - 2]
//        arr.remove(at: arr.count - 1)
//        arr.remove(at: arr.count - 1)
//    }
//
//    print(arr)
//
//    return answer * arr.max()!
//
//}
//
//getResult(array: [1,2,-3,-4])


//Интеграционный шлюз? Нет ничего проще! Шлюз имеет протокол для преобразования строк, тогда все мемы будут уходить в сеть. Правило простое: в выходной строке, подстрока в фигурных скобках повторяется столько раз, какое число указано перед скобками, например, 2{a} -> "aa". Внутри фигурных скобок могут быть вложены и другие выражения с фигурными скобками, максимальный уровень вложенности равен 5.
//
//Ввод:
//
//s - исходная строка
//Вывод:
//
//string - измененная строка после работы шлюза
//Пример 1:
//
//s ="2{b}3{fg}"
//getResult(s) = bbfgfgfg
//Пример 2:
//
//s ="4{b3{a}}"
//getResult(s) = baaabaaabaaabaaa

//func getResult(formula: String) -> String {
//
//var answer = [Character]()
//    for c in formula {
//        if c == "}" {
//            for e in 0 ..< answer.count {
//                let index = answer.count - 1 - e
//                if answer[index] == "{" {
//                    if let count = Int(String(answer[index - 1])) {
//                        answer.remove(at: index)
//                        var chunk = answer[index ..< answer.count]
//                        answer.removeLast(answer.count)
//                        var newChank = chunk
//                        for _ in 1 ... count - 1 {
//                            newChank += chunk
//                        }
//                        answer.append(contentsOf: newChank)
//                        print(answer)
//                        break
//                    }
//                }
//            }
//        } else {
//            answer.append(c)
//        }
//    }
//    return String(answer)
//}
//
//getResult(formula: "2{b}3{fg}")
//
//
//let question = "2{b}3{fg}"
//
//
//func multiplyStr(count: Int, str: String) -> String {
//    var result = ""
//    for _ in 0..<count {
//        result += str
//    }
//    return result
//}
//func nextOpening(from index: String.Index, in str: String) -> String.Index {
//    var current = index
//    while current < str.endIndex {
//        if str[current] == "{" {
//            return current
//        }
//        current = str.index(after: current)
//    }
//    return str.endIndex
//}
//func endOfFullExpression(from index: String.Index, in str: String) -> String.Index {
//    var current = index
//    var count = 0
//    while current < str.endIndex {
//        if str[current] == "}" {
//            count -= 1
//        }
//        if str[current] == "{" {
//            count += 1
//        }
//        if count == 0 {
//            return current
//        }
//        current = str.index(after: current)
//    }
//    return str.endIndex
//}
//func getResult(formula: String) -> String {
//    var current = formula.startIndex
//
//    var result = ""
//
//    while current < formula.endIndex {
//        if formula[current].isLetter {
//            result.append(formula[current])
//            current = formula.index(after: current)
//            continue
//        }
//
//        if formula[current].isNumber {
//
//            let firstParenesis = nextOpening(from: current, in: formula)
//            let lastParentesis = endOfFullExpression(from: firstParenesis, in: formula)
//
//            let number = Int(String(formula[current..<firstParenesis])) ?? 1
//
//            let substr = String(formula[formula.index(after: firstParenesis)..<lastParentesis])
//
//            let recursive = multiplyStr(count: number, str: getResult(formula:substr))
//
//            result.append(recursive)
//            current = formula.index(after: lastParentesis)
//            continue
//        }
//    }
//    return result
//}
//
//getResult(formula: question)
