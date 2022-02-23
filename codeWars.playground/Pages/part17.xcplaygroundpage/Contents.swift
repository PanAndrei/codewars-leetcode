//: [Previous](@previous)

import Foundation

//You have been watching a video for some time. Knowing the total video duration find out what portion of the video you have already watched

//func solution(part: String, total: String) -> [Int] {
//    guard part != total else { return [1, 1] }
//
//    let partStr = part.components(separatedBy: ":").map { Int($0)! }
//    var partSec = partStr[0] * 3600 + partStr[1] * 60 + partStr[2]
//    var totalStr = total.components(separatedBy: ":").map { Int($0)! }
//    var totalSec = totalStr[0] * 3600 + totalStr[1] * 60 + totalStr[2]
//    var answer = [Int]()
//
//    for _ in 0 ... 100 {
//        for i in 2 ... 999 {
//            if partSec % i == 0 && totalSec % i == 0 {
//                partSec /= i
//                totalSec /= i
//            }
//        }
//    }
//
//    answer.append(partSec)
//    answer.append(totalSec)
//
//    return answer
//}
//
//solution(part: "08:08:08", total: "20:20:20")
//
//

// разобрать как тут делитель рекурсией находится

//func solution(part: String, total: String) -> [Int] {
//    let part = calculate(for: part.components(separatedBy: ":").compactMap { Int($0) })
//    let total = calculate(for: total.components(separatedBy: ":").compactMap { Int($0) })
//    let divisor = gcd(a: part, b: total)
//    return [part / divisor, total / divisor]
//}
//
//func gcd(a: Int, b: Int) -> Int {
//    if (b == 0) { return a }
//    return gcd(a: b, b: a % b)
//}
//
//func calculate(for components: [Int]) -> Int {
//    guard components.count == 3 else { return 0 }
//    return components[0] * 3600 + components[1] * 60 + components[2]
//}

//Whenever you decide to celebrate your birthday you always do this your favorite café, which is quite popular and as such usually very crowded. This year you got lucky: when you and your friend enter the café you're surprised to see that it's almost empty. The waiter lets slip that there are always very few people on this day of the week.
//
//You enjoyed having the café all to yourself, and are now curious about the next time you'll be this lucky. Given the current birthdayDate, determine the number of years until it will fall on the same day of the week.
//
//For your convenience, here is the list of months lengths (from January to December, respectively):
//
//Months lengths: 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31.
//Please, note that in leap years February has 29 days. If your birthday is on the 29th of February, you celebrate it once in four years. Otherwise you birthday is celebrated each year.

//let birthdayDate = "02-01-2016"
//// не работает
//func solution(birthdayDate: String) -> Int {
//    var date = birthdayDate.components(separatedBy: "-").compactMap { Int($0) }
//    var years = 1
//    var sum = (date[2] % 4 == 0 && date[2] % 100 != 0) ? 366 : 365
//
//    while sum % 7 != 0 {
//        if date[2] % 4 == 0 && date[2] % 100 != 0 {
//            sum += 366
//        } else {
//            sum += 365
//        }
//        date[2] += 1
//        years += 1
//    }
//    return years
//}
//
//solution(birthdayDate: birthdayDate)
//
//// решение
//
//func solution(birthdayDate: String) -> Int {
//    guard let current = birthdayDate.toDate() else { return 0 }
//    let calendar = Calendar(identifier: .gregorian)
//    let weekday = calendar.component(.weekday, from: current)
//    var value = 1
//    if calendar.component(.day, from: current) == 29 && calendar.component(.month, from: current) == 2 {
//        value = 4
//    }
//    var nextDate = current
//    repeat {
//        nextDate = calendar.date(byAdding: .year, value: value, to: nextDate)!
//        if value == 4 && !isLeapYear(calendar.component(.year, from: nextDate)) {
//            nextDate = calendar.date(byAdding: .year, value: value, to: nextDate)!
//            nextDate = calendar.date(byAdding: .day, value: 1, to: nextDate)!
//        }
//    } while calendar.component(.weekday, from: nextDate) != weekday
//    return calendar.component(.year, from: nextDate) - calendar.component(.year, from: current)
//}
//
//extension String {
//    func toDate() -> Date? {
//        let dateFormatter = DateFormatter()
//        dateFormatter.dateFormat = "MM-dd-yyyy"
//        return dateFormatter.date(from: self)
//    }
//}
//
//func isLeapYear(_ year: Int) -> Bool {
//    return (year % 4 == 0) && (year % 100 != 0) || (year % 400 == 0)
//}
