//: [Previous](@previous)

import Foundation

/// from the first try!

func palindromeRearranging(inputString: String) -> Bool {
    let startArray = inputString.map {String($0)}
    var arrayOfRepeats : [Int] = []
    var proceedElements : [String] = []
    
    startArray.forEach({
        let element = $0
        
        guard proceedElements.contains(element) == false
        else {
            return
        }
        
        let elementcount = startArray.filter({$0 == element}).count
        arrayOfRepeats.append(elementcount)
        proceedElements.append(element)
    })
    
    if startArray.count % 2 == 0 {
        let checArr = arrayOfRepeats.filter({$0 % 2 != 0})
        return checArr.isEmpty
    } else {
        let chechArr = arrayOfRepeats.filter({$0 % 2 != 0})
        return chechArr.count == 1
    }
}

palindromeRearranging(inputString: "abdhuierf")

