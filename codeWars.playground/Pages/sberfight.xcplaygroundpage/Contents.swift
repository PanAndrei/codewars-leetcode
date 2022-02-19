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


//Вы сбежали от тянущейся рутины и отправились в приключение! Каждый день вы можете спуститься в подземелье и найти сокровища. Ваша задача забрать с собой как можно больше сокровищ. Однако, если вы пойдёте за сокровищами во второй день подряд, то у вас украдут половину сокровищ текущего, второго дня другие искатели приключений, действуйте осторожно!
//
//Чтобы этого избежать, вы можете взять паузу в один день.
//
// Ввод:
//treasures - массив сокровищ, treasures[i] - количество сокровищ, i - номер дня, 0<length(treasures)<=10, 0<treasures[i]<100
//
// Вывод:
//integer - максимальное количество сокровищ за приключение, округленное в большую сторону

//func getResult(treasures: [Int]) -> Int {
//    var result = 0.0
//    var step = 0
//    var resultTemp = 0.0
//    
//    for j in 0 ... 1 {
//        step = j
//        resultTemp += Double(treasures[step])
//        
//        for _ in 1 ... treasures.count {
//            print(resultTemp, step)
//            if (step + 2) <= (treasures.count - 1) {
//                if (treasures[step + 1] / 2) >= treasures[step + 2] {
//                    resultTemp += (Double(treasures[step + 1]) / 2)
//                    step += 1
//                } else {
//                    resultTemp += Double(treasures[step + 2])
//                    step += 2
//                }
//            } else if (step + 1) <= (treasures.count - 1) {
//                resultTemp += (Double(treasures[step + 1]) / 2)
//                step += 1
//            } else {
//                break
//            }
//        }
//        if resultTemp > result {
//            result = resultTemp
//        }
//        resultTemp = 0
//    }
//    return Int(ceil(result))
//}
//
//getResult(treasures: [3, 1, 10, 6, 3, 10])

//На вход подается числовой массив. За одну операцию вы можете разделить любое число в массиве на два (целочисленное деление). Определите, может ли сумма всех элементов в массиве быть не больше w. Общее количество операций не должно превышать значение самого большого числа в массиве.
//
//Возможное общее количество операций меняется динамически, то есть если Вы будете делить самое крупное число, то общее количество возможных операций уменьшится.
//
//Ввод:
//
//arr - массив чисел (integer[]), 1<length(arr)<10
//w - число, максимальный предел для суммы массива (integer), 0<w<100
//Вывод:
//
//Boolean - возможно ли удовлетворить условие sum(arr) <= w

//perfect!!
//func getResult(arr: [Int], w: Int) -> Bool {
//    var newArr = arr
//    var count = 0
//    var operation = newArr.max()
//    while newArr.reduce(0, +) >= w {
//        if count > operation! {
//            return false
//        }
//        print(newArr)
//        var max = newArr.max()!
//        var indexMax = newArr.firstIndex(of: max)!
//        newArr[indexMax] /= 2
//        count += 1
//        operation = max
//    }
//    return true
//}
//
//getResult(arr: [3, 2, 4, 5], w: 6)
//getResult(arr: [3, 2, 4, 5], w: 9)

//Вам даётся массив имён трёх братьев и массив утверждений, которые являются правдивыми. Список возможных утверждений:
//
//“is youngest” – самый младший
//“is not youngest” – не самый младший
//“is not oldest” – не самый старший
//“is oldest” – самый старший
//Вам предстоит расставить всех братьев по возрастанию возраста
// Ввод:
//
//names – массив имён трёх братьев, length(names)=3
//statements – массив(string[]), statements[i] = [“a-b”], где a – имя брата, b – утверждение, их разделяет тире без пробелов. Для одного брата может быть несколько утверждений
// Вывод:
//
//String[] – список братьев от самого младшего до самого старшего, решение всегда есть и всегда одно

//names=[“Kevin”, “Jack”, “Mark”]
//statements=[“Kevin-is not youngest”, “Jack-is oldest”, “Mark-is not oldest”]
//getResult(names, statements)=[“Mark”, “Kevin”, “Jack”]

//func getResult(names: [String], statements: [String]) -> [String] {
    
//
//    var resultNames = Array(repeating: "", count: 4)
//    var totalStatement = ""
//    for element in statements {
//        totalStatement += element
//    }
//    var count = 0
//    for element in names {
//        if totalStatement.contains(element) {
//            count += 1
//        }
//    }
//
//    for element in statements {
//        if element.contains("is youngest") {
//            let name = element.split(separator: "-").first!
//            resultNames.insert(String(name), at: 0)
//        } else if element.contains("is not youngest") {
//            let name = element.split(separator: "-").first!
//            resultNames.insert(String(name), at: 2)
//        } else if element.contains("is not oldest") {
//            let name = element.split(separator: "-").first!
//            resultNames.insert(String(name), at: 1)
//        } else if element.contains("is oldest") {
//            let name = element.split(separator: "-").first!
//            resultNames.insert(String(name), at: 3)
//        }
//    }
//
//    if count < 3 {
//        for element in names {
//            if !resultNames.contains(element) {
//                if totalStatement.contains("is not oldest") && totalStatement.contains("is not youngest") && totalStatement.contains("is youngest") {
//                    resultNames.insert(element, at: 3)
//                    continue
//                } else if totalStatement.contains("is not oldest") && totalStatement.contains("is not youngest") && totalStatement.contains("is oldest") {
//                    resultNames.insert(element, at: 0)
//                    continue
//                } else if totalStatement.contains("is youngest") && totalStatement.contains("is oldest") {
//                    resultNames.insert(element, at: 1)
//                    continue
//                } else if totalStatement.contains("is youngest") && totalStatement.contains("is not oldest") {
//                    resultNames.insert(element, at: 3)
//                    continue
//                } else if totalStatement.contains("is oldest") && totalStatement.contains("is not youngest") {
//                    resultNames.insert(element, at: 0)
//                    continue
//                }
//                }
//            }
//        }
//
//
//        return resultNames.filter { $0 != "" }
//
    
//    }

//getResult(names: ["Kevin", "Jack", "Mark"], statements: ["Kevin-is not youngest", "Jack-is oldest", "Mark-is not oldest"])
//
//getResult(names: ["Kevin", "Jack", "Mark"], statements: ["Kevin-is youngest", "Mark-is oldest"])

//getResult(names: ["Kevin", "Jack", "Mark"], statements: ["Kevin-is not youngest", "Jack-is oldest", "Kevin-is not oldest"])

//Сантехник устал от того, что ему приходится самому рассчитывать количество и цену каждой трубы. Поэтому он решил написать программу, которая будет принимать бинарную схему труб (0-нет трубы, 1- есть труба) и выдавать стоимость проекта, в зависимости от типа каждой трубы.
//
//Цены на трубы постоянные и указаны на рисунке, берем их именно отсюда:
//
//Примечание:
//
//если труба находится у начала или конца матрицы, то считаем, что за границей находится другая труба
//труба всегда одна и нигде не прерывается
//нам тоже показалось странным, что одинаковые трубы под разными углами могут стоить дороже, мы считаем, что сантехника обманывают, но сообщить ему почему-то не решились
//На входе:
//
//scheme - бинарная матрица схемы труб, scheme[i]=0|1
//На выходе:
//
//Integer - общая стоимость всех труб, которые надо купить

//let scheme = ["0-0-1-0-0-0-0-0", "0-0-1-0-1-1-1-0", "0-0-1-1-1-0-1-0", "0-0-0-0-0-0-1-0", "0-0-0-0-0-0-1-0", "0-0-0-0-1-1-1-0", "0-0-0-0-1-0-0-0"]
//
//func getResult(scheme: [String]) -> Int {
//    var newScheme =  [[Int]]()
//    for i in 0 ..< scheme.count {
//        let element = [0] + scheme[i].filter { $0 != "-"}.map { Int(String($0))! } + [0]
//        newScheme.append(element)
//    }
//    let addArr = Array(repeating: 0, count: newScheme[0].count)
//    newScheme.insert(addArr, at: 0)
//    newScheme.append(addArr)
//    var schemeCalculate = newScheme
//
//    for i in 1 ..< newScheme.count - 1 {
//        for j in 1 ..< newScheme[0].count - 1 {
//            if newScheme[i][j] == 0 {
//                continue
//            } else if newScheme[i][j] == 1 && newScheme[i - 1][j] == 1 && newScheme[i + 1][j] == 1 && newScheme[i][j - 1] == 1 && newScheme[i][j + 1] == 1 {
//                schemeCalculate[i][j] = 63
//            } else if newScheme[i][j] == 1 && newScheme[i - 1][j] == 1 && newScheme[i + 1][j] == 1  && newScheme[i][j + 1] == 1 {
//                schemeCalculate[i][j] = 40
//            } else if newScheme[i][j] == 1 && newScheme[i - 1][j] == 1 && newScheme[i + 1][j] == 1 && newScheme[i][j - 1] == 1  {
//                schemeCalculate[i][j] = 31
//            } else if newScheme[i][j] == 1 && newScheme[i - 1][j] == 1 && newScheme[i][j - 1] == 1 && newScheme[i][j + 1] == 1 {
//                schemeCalculate[i][j] = 29
//            } else if newScheme[i][j] == 1 && newScheme[i + 1][j] == 1 && newScheme[i][j - 1] == 1 && newScheme[i][j + 1] == 1 {
//                schemeCalculate[i][j] = 32
//            } else if newScheme[i][j] == 1  && newScheme[i + 1][j] == 1  && newScheme[i][j + 1] == 1 {
//                schemeCalculate[i][j] = 17
//            } else if newScheme[i][j] == 1 && newScheme[i - 1][j] == 1 && newScheme[i][j - 1] == 1  {
//                schemeCalculate[i][j] = 13
//            } else if newScheme[i][j] == 1 && newScheme[i - 1][j] == 1 && newScheme[i][j + 1] == 1 {
//                schemeCalculate[i][j] = 15
//            } else if newScheme[i][j] == 1 &&  newScheme[i + 1][j] == 1 && newScheme[i][j - 1] == 1 {
//                schemeCalculate[i][j] = 10
//            } else if newScheme[i][j] == 1 && newScheme[i][j - 1] == 1 && newScheme[i][j + 1] == 1 ||
//                      newScheme[i][j] == 1 && newScheme[i][j - 1] == 0 && newScheme[i][j + 1] == 1 ||
//                      newScheme[i][j] == 1 && newScheme[i][j - 1] == 1 && newScheme[i][j + 1] == 0 {
//                schemeCalculate[i][j] = 21
//            } else if newScheme[i][j] == 1 && newScheme[i - 1][j] == 1 && newScheme[i + 1][j] == 1 ||
//                      newScheme[i][j] == 1 && newScheme[i - 1][j] == 0 && newScheme[i + 1][j] == 1 ||
//                      newScheme[i][j] == 1 && newScheme[i - 1][j] == 1 && newScheme[i + 1][j] == 0 {
//                schemeCalculate[i][j] = 20
//            }
//        }
//    }
//
//    for element in newScheme {
//        print(element)
//    }
//
//    for element in schemeCalculate {
//        print(element)
//    }
//
//    return schemeCalculate.flatMap { $0 }.reduce(0, +)
//}
//
//getResult(scheme: scheme)


//Вы купили дорогой билет на карнавал и хотите попасть на все представления. Учитывая время начала мероприятий и длительности проведения, ответьте, возможно ли это. Время перемещения между мероприятиями не учитывается.
//
//На входе:
//
//time - интервалы проведения представлений (string[]) в формате: "час_начала-час_окончания"
//На выходе:
//
//Boolean - возможно ли полностью посмотреть каждое представление
//Пример 1:
//
//time = ["09-13", "12-14"]
//getResult(time) = false
//Первое представление идёт с 9 часов до 13, а второе начинается в 12.
//Так что побывать на всех представлениях полностью не получится.
//Пример 2:
//
//time = ["07-09", "10-12", "15-19"]
//getResult(time) = true

//func getResult(time: [String]) -> Bool {
//    var times = time
//    var arrTimes = [[Int]]()
//    for i in 0 ..< times.count {
//        let element = times[i].components(separatedBy: "-")
//        let intElement = element.map { Int($0)! }
//        print(intElement)
//        arrTimes.append(intElement)
//    }
//
//    for i in 0 ..< arrTimes.count - 1 {
//        if arrTimes[i][1] > arrTimes[i + 1][0] {
//            return false
//        }
//    }
//
//    return true
//}
//
//getResult(time: ["09-13", "14-14"])


//Илон Маск презентовал свой новый космический проект - он запустил в небо большое количество ракет. Дан массив rocket_pos, где rocket_pos[i] - высота, на которой находится i-я ракета и rocket_speed, где rocket_speed[i] - скорость i-й ракеты (величина перемещения за одну единицу времени).
//
//Если ракеты достигают одинаковой высоты на каком-либо шаге, то они складываются в одну ракету, их скорость тоже складывается.
//
//Определите, сколько ракет будет в итоге.
//
//Ввод:
//
//rocket_pos - начальные позиции каждой из ракет (Integer[]), 0<length(rocket_pos)<=10, 0<=rocket_pos[i]<=1000
//rocket_speed - скорость каждой из ракет (Integer[]), 0<length(rocket_speed)<=10, 0<=rocket_speed[i]<=15
//Вывод:
//
//Integer - количество ракет по итогу всех "соединений"

//let rocket_pos = [3, 11] ,rocket_speed = [5, 1]
//
//func findSim(arr: [Int]) -> [Int] {
//    var answer = [Int]()
//    for i in 0 ..< arr.count {
//        for j in (i + 1) ..< arr.count {
//            if arr[i] == arr[j] {
//                answer.append(i)
//                answer.append(j)
//            }
//        }
//    }
//    return Array(Set(answer)).sorted()
//}
//
//// не отрабатывает когда несколько раз складываются скоростти
//func getResult(rocketPos: [Int], rocketSpeed: [Int]) -> Int {
//    var rockets = rocketPos
//    var speed = rocketSpeed
//    var counts = [rockets.count]
//
//    for _ in 1 ... 1000 {
//        for i in 0 ..< rocketPos.count {
//            rockets[i] += speed[i]
//        }
//        if Set(rockets).count != rockets.count {
//            counts.append(Set(rockets).count)
//
//        }
//    }
//    return counts.min()!
//}
//
//getResult(rocketPos: rocket_pos, rocketSpeed: rocket_speed)

//Сегодня на турнире сражаются отважные войны! Начальная турнирная сетка определяется случайным образом, количество участников неизменно равно четырем.
//
//У каждого бойца есть параметр выносливости. Сражаясь, побеждает тот, у кого этот параметр выше. У победителя отнимается выносливость, равная выносливости противника, после чего боец проходит дальше по турнирной сетке.
//
//Если во время схватки выносливость бойцов одинакова, то побеждает случайный боец, оставаясь с нулевой выносливостью.
//
//Учитывая случайность подбора в турнирной сетке, определите для каждого участника шанс победить в турнире.

//let fighters_stamina = [2, 1, 0, 2]
let fighters_stamina = [1, 0, 3, 4]

// не учитывает шансы при одинаковой стамине

//func fight1(arr: [Int]) -> Int {
//    var figthers = arr
//    var vin1 = -1
//    var vin2 = -1
//    var vin3 = -1
//
//    if figthers[0] >= figthers[1] {
//        vin1 = 0
//        figthers[0] = figthers[0] - figthers[1]
//    } else {
//        vin1 = 1
//        figthers[0] = figthers[1] - figthers[0]
//    }
//
//    if figthers[2] >= figthers[3] {
//        vin2 = 2
//        figthers[2] = figthers[2] - figthers[3]
//    } else {
//        vin2 = 3
//        figthers[2] = figthers[3] - figthers[2]
//    }
//
//    if figthers[0] >= figthers[2] {
//        vin3 = vin1
//    } else {
//        vin3 = vin2
//    }
//    return vin3
//}
//
//func fight2(arr: [Int]) -> Int {
//    var figthers = arr
//    var vin1 = -1
//    var vin2 = -1
//    var vin3 = -1
//
//    if figthers[0] >= figthers[3] {
//        vin1 = 0
//        figthers[0] = figthers[0] - figthers[3]
//    } else {
//        vin1 = 3
//        figthers[0] = figthers[3] - figthers[0]
//    }
//
//    if figthers[1] >= figthers[2] {
//        vin2 = 1
//        figthers[2] = figthers[1] - figthers[2]
//    } else {
//        vin2 = 2
//        figthers[2] = figthers[2] - figthers[1]
//    }
//
//    if figthers[0] >= figthers[2] {
//        vin3 = vin1
//    } else {
//        vin3 = vin2
//    }
//    return vin3
//}
//
//func fight3(arr: [Int]) -> Int {
//    var figthers = arr
//    var vin1 = -1
//    var vin2 = -1
//    var vin3 = -1
//
//    if figthers[0] >= figthers[2] {
//        vin1 = 0
//        figthers[0] = figthers[0] - figthers[2]
//    } else {
//        vin1 = 2
//        figthers[0] = figthers[2] - figthers[0]
//    }
//
//    if figthers[1] >= figthers[3] {
//        vin2 = 1
//        figthers[2] = figthers[1] - figthers[3]
//    } else {
//        vin2 = 3
//        figthers[2] = figthers[3] - figthers[1]
//    }
//
//    if figthers[0] >= figthers[2] {
//        vin3 = vin1
//    } else {
//        vin3 = vin2
//    }
//    return vin3
//}
//
//func getResult(fightersStamina: [Int]) -> [Int] {
//    var result = fightersStamina
//    var vinners = [Int]()
//    var chanceForOne = 0
//
//    vinners.append(fight1(arr: fightersStamina))
//    vinners.append(fight2(arr: fightersStamina))
//    vinners.append(fight3(arr: fightersStamina))
//
//    chanceForOne = 100 / vinners.count
//    print(chanceForOne)
//
//    for i in 0 ..< result.count {
//        result[i] = vinners.filter { $0 == i }.count * chanceForOne
//    }
//
//    return result
//}
//
//getResult(fightersStamina: fighters_stamina)


//


