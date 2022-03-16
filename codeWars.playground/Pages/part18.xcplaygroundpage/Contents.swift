//: [Previous](@previous)

import Foundation

//During your most recent trip to Codelandia you decided to buy a brand new CodePlayer, a music player that (allegedly) can work with any possible media format. As it turns out, this isn't true: the player can't read lyrics written in the LRC format. It can, however, read the SubRip format, so now you want to translate all the lyrics you have from LRC to SubRip.
//
//Since you are a pro programmer (no noob would ever get to Codelandia!), you're happy to implement a function that, given lrcLyrics and songLength, returns the lyrics in SubRip format.

//func solution(lrcLyrics: [String], songLength: String) -> [String] {
//    let timelines = lrcLyrics.map { "00:" + String($0.components(separatedBy: "]").first!.dropFirst()) } + [songLength]
//    let names = lrcLyrics.map { element -> String in
//        let str = element.components(separatedBy: "]").last!
//        return str.isEmpty ? str : String(str.suffix(str.count - 1))
//    }
//    var result = [String]()
//    for i in 0...(timelines.count - 2) {
//        result.append("\(i + 1)")
//        result.append(handleTimeline(timeline: timelines[i]) + " --> " + handleTimeline(timeline: timelines[i + 1]))
//        result.append(names[i])
//        result.append("")
//    }
//    return Array(result.dropLast())
//}
//
//func handleTimeline(timeline: String) -> String {
//    let components = timeline.components(separatedBy: ":")
//    guard components.count == 3, let hour = Int(components[0]), let minute = Int(components[1]), let second = Double(components[2]) else { return "" }
//    return String(format: "%02d:%02d:%06.3f", hour + minute / 60, minute % 60, second).replacingOccurrences(of: ".", with: ",")
//}


// xисло делится на 3, 5 и сумма не больше 10

var arr = Array(1 ... 500)
let b = arr.filter { $0 % 15 == 0 }
var ttt = Array(1 ... 300)
let c = ttt.filter { $0 % 3 == 0 && $0 % 5 == 0}

b == c

//print(b)

func calcSum(arr: [Int]) -> [Int] {
    var answer = [Int]()
    var mult = [Int]()
    
    for element in arr {
        var str = String(element).compactMap { Int(String($0)) }.reduce(0, +)
        answer.append(str)
    }
//    print(answer)
    
    for element in arr {
        let b = element / 15
        mult.append(b)
    }
    
//    print(mult)
    
    return answer
}

calcSum(arr: b)


func checkSum(_ num: Int) -> Bool {
    return String(num).compactMap { Int(String($0)) }.reduce(0, +) <= 10
}

func checkArr(arr: [Int]) -> [Int] {
    return arr.filter { $0 % 15 == 0 && checkSum($0) }
}

checkArr(arr: b)
