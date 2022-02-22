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
