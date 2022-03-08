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

//Benjamin recently bought a digital clock at a magic trick shop. The seller never told Ben what was so special about it, but mentioned that one day Benjamin would be faced with a surprise.
//
//Indeed, the clock did surprise Benjamin: without warning, at someTime the clock suddenly started going in the opposite direction! Unfortunately, Benjamin has an important meeting very soon, and knows that at leavingTime he should leave the house so as to not be late. Ben spent all his money on the clock, so has to figure out what time his clock will show when it's time to leave.
//
//Given the someTime at which the clock started to go backwards, find out what time will be shown on the curious clock at leavingTime.
//
//For your convenience, here is the list of months lengths (from January to December, respectively):
//
//func solution(someTime: String, leavingTime: String) -> String {
//    let dateFormatter = DateFormatter()
//    dateFormatter.dateFormat = "yyyy-MM-dd HH:mm"
//    let someTime = dateFormatter.date(from: someTime)!
//    let leavingTime = dateFormatter.date(from: leavingTime)!
//    let calendar = Calendar.current
//    let value = calendar.dateComponents([.second], from: someTime, to: leavingTime)
//    let showingTime = calendar.date(byAdding: .second, value: -value.second!, to: someTime)!
//    return dateFormatter.string(from: showingTime)
//}

//You're a pretty busy billionaire, and you often fly your personal Private Jet to remote places. Usually travel doesn't bother you, but this time you are unlucky: it's New Year's Eve, and since you have to fly halfway around the world, you'll probably have to celebrate New Year's Day in mid-air!
//
//Your course lies west of your current location and crosses several time zones. The pilot told you the exact schedule: it is known that you will take off at takeOffTime, and in minutes[i] after takeoff you will cross the ith border between time zones. After crossing each border you will have to set your wrist watch one hour earlier (every second matters to you, so you can't let your watch show incorrect time). It is guaranteed that you won't cross the IDL (i.e. after crossing each time zone border your current time will be set one hour back).
//
//You've been thinking about this situation and realized that it might be a good opportunity to celebrate New Year's Day more than once, i.e. each time your wrist watch shows 00:00. Assuming that you set your watch immediately after the border is crossed, how many times will you be able to celebrate this New Year's Day with a nice bottle of champagne? Note that the answer should include celebrations both in mid-air and on the ground (it doesn't matter if the plane landed in the last time zone before the midnight or not, you'll not let the last opportunity to celebrate New Year slip through your fingers).

//func min(_ s:String) -> Int {
//    let t = s.components(separatedBy: ":").compactMap{ Int($0) }
////    let t = s.componentsSeparatedByString(":").map{ Int($0)! }
//    return t[0]*60 + t[1]
//}
//
//
//func solution(takeOffTime: String, minutes: [Int]) -> Int {
//    var t = min(takeOffTime)
//    if t == 0 { t = 24*60 }
//    var d = minutes
//    if d.count > 0 {
//        for i in 1..<d.count {
//            d[i] -= minutes[i - 1]
//        }
//    }
//    var count = 0
//    for m in d {
//        if t <= 24*60 && t + m >= 24*60 { count += 1 }
//        t += m - 60
//    }
//    if t <= 24*60 { count += 1 }
//    return count
//}

//In an effort to be more innovative, your boss introduced a strange new tradition: the first day of every month you're allowed to work from home. You like this rule when the day falls on a Monday, because any excuse to skip rush hour traffic is great!
//
//You and your colleagues have started calling these months regular months. Since you're a fan of working from home, you decide to find out how far away the nearest regular month is, given that the currMonth has just started.
//
//For your convenience, here is a list of month lengths (from January to December, respectively):
//
//Month lengths: 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31.
//Please, note that in leap years February has 29 days.
//
//func solution(currMonth: String) -> String {
//    let dateFormatter = DateFormatter()
//    dateFormatter.dateFormat = "MM-yyyy"
//    let current = dateFormatter.date(from: currMonth)!
//    let calendar = Calendar.current
//    var next = current
//    repeat {
//        next = calendar.date(byAdding: .month, value: 1, to: next)!
//    } while calendar.component(.weekday, from: next) != 2
//    return dateFormatter.string(from: next)
//}

//Your Math teacher takes education very seriously, and hates it when a class is missed or canceled for any reason. He even made up the following rule: if a class is missed because of a holiday, the teacher will compensate for it with a makeup class after school.
//
//You're given an array, daysOfTheWeek, with the weekdays on which your teacher's classes are scheduled, and holidays, representing the dates of the holidays throughout the academic year (from 1st of September in year to 31st of May in year + 1). How many times will you be forced to stay after school for a makeup class because of holiday conflicts in the current academic year?
//
//For your convenience, here is the list of month lengths (from January to December, respectively):
//
//Month lengths: 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31.
//Please note that in leap years February has 29 days.

//func julian(_ y: Int, _ m: Int, _ d: Int) -> Int {
//    var y = y, m = m
//    if m > 2 {
//        m -= 3
//    } else {
//        m += 9
//        y -= 1
//    }
//
//    let c = y/100
//    let ya = y - 100*c
//    return (146097*c)/4 + (1461*ya)/4 + (153*m + 2)/5 + d + 1721119
//}
//
//func solution(year: Int, daysOfTheWeek: [Int], holidays: [String]) -> Int {
//    var count = 0
//    for h in holidays {
//        let d = h.components(separatedBy: "-").map{ Int($0)! }
//        var jd = julian(d[0] < 8 ? year + 1 : year, d[0], d[1])
//        if daysOfTheWeek.contains((jd % 7) + 1) { count += 1 }
//    }
//    return count
//}


//func getResult(num: Int) -> Int {
//    let numStr = String(num).map { $0 }
//    var result = 0
//
//    for element in numStr {
//        switch element {
//        case "2", "3", "5":
//            result += 5
//        case "1":
//            result += 2
//        case "4":
//            result += 4
//        case "6", "9", "0":
//            result += 6
//        case "7":
//            result += 3
//        default:
//            result += 7
//        }
//    }
//    return result
//}
//
//getResult(num: 1234567890)

//John Doe likes solutions very much, and he was very happy to hear that his country's government decided to introduce yet another one. He heard that the new solution will be celebrated each year on the xth week of month, on weekDay.
//
//Your task is to return the day of month on which the solution will be celebrated in the year yearNumber.
//
//For your convenience, here are the lists of months names and lengths and the list of days of the week names.
//
//Months: "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December".
//Months lengths: 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31.
//Days of the week: "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday".
//Please, note that in leap years February has 29 days.

//func dateToDay(month: Int, date: Int, year: Int) -> Int {
//    let isLeap = year % 4 == 0 && (year % 400 == 0 || !(year % 100 == 0))
//    if !isLeap && month == 2 && date == 29 { return 8 }
//    let mths = [1, 4, 4, 0, 2, 5, 0, 3, 6, 1, 4, 6]
//    let cents = [6, 4, 2, 0]
//    var y2 = ((year % 100) / 4) + date + mths[month-1]
//    y2 -= (isLeap && month < 3 ? 1 : 0)
//    let cent = (year / 100) % 4
//    y2 += cents[cent]
//    y2 += year % 100
//    return y2 % 7
//}
//
//func solution(x: Int, weekDay: String, month: String, yearNumber: Int) -> Int {
//    var hday = -1
//    let months: [String: (Int,Int)] = ["January": (1,31), "February": (2,28), "March": (3,31), "April": (4,30), "May": (5,31), "June": (6,30), "July": (7, 31), "August": (8,31), "September": (9,30), "October": (10,31), "November": (11,30), "December": (12,31)]
//    let days = ["zeropad", "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
//    let isLeap = yearNumber % 4 == 0 && (yearNumber % 400 == 0 || !(yearNumber % 100 == 0))
//
//    var (mth,mDays) = months[month]!
//    if isLeap && mth == 2 { mDays += 1 }
//    let dayOfWeek = days.index(of: weekDay)!
//    let firstDay = dateToDay(month: mth, date: 1, year: yearNumber)
//    let dayDiff = firstDay - dayOfWeek
//    let firstDate = dayDiff < 0 ? 1 - dayDiff : (dayDiff == 0 ? 1 : (2 + dayDiff))
//    let hDate = (x-1)*7 + firstDate
//    hday = hDate > mDays ? -1 : hDate
//
//    return hday
//}

//Implement the missing code, denoted by ellipses. You may not modify the pre-existing code.
//A sentence is considered correct if:
//
//it starts with a capital letter;
//it ends with a full stop, question mark or exclamation point ('.', '?' or '!');
//full stops, question marks and exclamation points don't appear anywhere else in the sentence.
//Given a sentence, return true if it is correct and false otherwise.
//
//Example
//
//For sentence = "This is an example of *correct* sentence.",
//the output should be
//solution(sentence) = true;
//
//For sentence = "!this sentence is TOTALLY incorrecT",
//the output should be
//solution(sentence) = false.

//func solution(sentence: String) -> Bool {
//  let pattern = "^[A-Z][^.?!]*[.?!]$"
//  return sentence.range(of: pattern, options: .regularExpression) != nil
//}
//
//solution(sentence: "This is an example of *correct* sentence.")

//
//Implement the missing code, denoted by ellipses. You may not modify the pre-existing code.
//Implement a function that replaces each digit in the given string with a '#' character.


//func solution(input: String) -> String {
//    let regex = try! NSRegularExpression(pattern: "[0-9]", options: "#")
//
//    return regex.stringByReplacingMatches(in: input, options: , range: , withTemplate: )
//}
