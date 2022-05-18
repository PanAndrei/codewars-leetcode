//: [Previous](@previous)

import Foundation

//var word = "how    are you"
//var arr = word.split(separator: " ")
//print(arr)
//print(arr.filter { $0.contains("ar")})


struct CathalogDescription {
    let description: String
}


var arrrr = [CathalogDescription(description: "gg ss"), CathalogDescription(description: "dd ww")]

//var tt = arrrr.filter { $0.description.split(separator: " ").map { $0 }.filter { $0.contains("s")} }
var tt = arrrr.filter { $0.description.range(of: "s") != nil }

print(tt)
