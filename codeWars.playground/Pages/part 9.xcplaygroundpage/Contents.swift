//: [Previous](@previous)


//Given an integer n, find the minimal k such that
//
//k = m! (where m! = 1 * 2 * ... * m) for some integer m;
//k >= n.
//In other words, find the smallest factorial which is not less than n.

//func solution(n: Int) -> Int {
//    var result = 1
//    var iteration = 1
//    while result < n {
//        result *= iteration
//        iteration += 1
//    }
//    return result
//}
//
//solution(n: 17)

//Given integers n, l and r, find the number of ways to represent n as a sum of two integers A and B such that l ≤ A ≤ B ≤ r.

//func solution(n: Int, l: Int, r: Int) -> Int {
//    var set = Set<Int>()
//    for i in l ... r {
//        if (l...r).contains(n - i) {
//            set.insert((n - i))
//            print(i, (n - i))
//        }
//    }
//    print(set.count)
//    return ((set.count) % 2 == 0) ? (set.count / 2) : (((set.count / 2) + 1))
//}
//
//solution(n: 24, l: 8, r: 16)

// не понимаю как
//func solufdtion(n: Int, l: Int, r: Int) -> Int {
//    return max(0, min(n/2-l, r-n/2) + (n+1)%2)
//}
//
//solufdtion(n: 24, l: 8, r: 16)


//You are standing at a magical well. It has two positive integers written on it: a and b. Each time you cast a magic marble into the well, it gives you a * b dollars and then both a and b increase by 1. You have n magic marbles. How much money will you make?
//
//func solution(a: Int, b: Int, n: Int) -> Int {
//    var aa = a, bb = b
//    var result = 0
//    for _ in 0 ..< n {
//        result += aa * bb
//        aa += 1
//        bb += 1
//    }
//    return result
//}

// рекурсия
// изучить

//solutioxn(a: 1, b: 2, n: 2)
//
//func solution(a: Int, b: Int, n: Int) -> Int {
//
//    if (n > 0){
//        return (a * b) + solution(a+1,b: b+1,n: n-1)
//    }else{
//        return 0
//    }
//
//}

// все таки была формула
//return n*a*b + (a+b)*n*(n-1)/2 + n*(n-1)*(2*n-1)/6;

//To prepare his students for an upcoming game, the sports coach decides to try some new training drills. To begin with, he lines them up and starts with the following warm-up exercise: when the coach says 'L', he instructs the students to turn to the left. Alternatively, when he says 'R', they should turn to the right. Finally, when the coach says 'A', the students should turn around.
//
//Unfortunately some students (not all of them, but at least one) can't tell left from right, meaning they always turn right when they hear 'L' and left when they hear 'R'. The coach wants to know how many times the students end up facing the same direction.
//
//Given the list of commands the coach has given, count the number of such commands after which the students will be facing the same direction.

// почти работает
//func solutiаon(commands: String) -> Int {
//    let arrayString = commands.map { String($0) }
//    let numLR = arrayString.filter { ($0 == "L") || ($0 == "R") }.count
//    let numA = arrayString.count - numLR
//
//    return numLR & 2 == 0 ? (numLR / 2 + numA) : (numLR / 2)
//}
//
//var comand = "AALAAALARAR"
//
//solutiаon(commands: comand)
//
//
//func solution(commands: String) -> Int {
//    let arrayString = commands.map { String($0) }
//    var newArr: Array<Int> = []
//
//    for element in arrayString {
//        if element == "L" {
//            newArr.append(1)
//        } else if element == "R" {
//            newArr.append(-1)
//        } else {
//            newArr.append(0)
//        }
//    }
//    print(newArr)
//
//    var dir = 0
//    var answer = 0
//
//    for i in 0 ..< newArr.count {
//        dir += newArr[i]
//        if dir % 2 == 0 {
//            answer += 1
//            print(i)
//        }
//    }
//    return answer
//}
//
//solution(commands: comand)
//
//// более изящно
//
//func solution(commands: String) -> Int {
//    var total = 0
//    var same = true
//    for c in commands.characters {
//        if c != "A" {
//            same = !same
//        }
//        if same {
//            total += 1
//        }
//    }
//    return total
//}


//A little child is studying arithmetic. They have just learned how to add two integers, written one below another, column by column. But the child always forgets about the important part - carrying.
//
//Given two integers, your task is to find the result that the child will get.



//func solution(param1: Int, param2: Int) -> Int {
//    var arr1 = String(param1).map { Int(String($0)) }
//    var arr2 = String(param2).map { Int(String($0)) }
//    var resultArr: Array<Int> = []
//
//    if arr1.count < arr2.count {
//        while arr1.count != arr2.count {
//            arr1.insert(0, at: 0)
//        }
//    } else if arr2.count < arr1.count {
//        while arr1.count != arr2.count {
//            arr2.insert(0, at: 0)
//        }
//    }
//
//    for i in 0 ..< arr1.count {
//        let num1 = arr1[arr1.count - 1 - i] ?? 0
//        let num2 = arr2[arr2.count - 1 - i] ?? 0
//        resultArr.append((num1 + num2) % 10)
//    }
//    var result = ""
//    result = resultArr.reversed().map { String ($0) }.joined(separator: "")
//    return Int(result)!
//}
//
//solution(param1: 456, param2: 1734)
//
//func solution(param1: Int, param2: Int) -> Int {
//    var total = 0
//
//    for n in 0...4 {
//        let exponent = Int(pow(10.0, Double(n)))
//        let digit = (param1 / exponent + param2 / exponent) % 10
//        total += digit * exponent
//    }
//    return total
//}

//You have k apple boxes full of apples. Each square box of size m contains m × m apples. You just noticed two interesting properties about the boxes:
//
//The smallest box is size 1, the next one is size 2,..., all the way up to size k.
//Boxes that have an odd size contain only yellow apples. Boxes that have an even size contain only red apples.
//Your task is to calculate the difference between the number of red apples and the number of yellow apples.

//func solution(k: Int) -> Int {
//    var yellow = 0
//    var red = 0
//
//    for i in 1 ... k {
//        if i % 2 == 0 {
//            red += i * i
//        }else {
//            yellow += i * i
//        }
//    }
//
//    return red - yellow
//}
//
//solution(k: 5)
//
//func solution(k: Int) -> Int {
//    var diff = 0
//
//    for i in 1...k {
//        diff += i * (i % 2 == 0 ? i : -i)
//    }
//
//    return diff
//}

//Define an integer's roundness as the number of trailing zeroes in it.
//
//Given an integer n, check if it's possible to increase n's roundness by swapping some pair of its digits.

//func solution(n: Int) -> Bool {
//    let arr = String(n).map { Int(String($0))! }
//    var resulr = false
//
//    for i in 0 ..< arr.count - 1 {
//        if arr[arr.count - 1 - i] != 0 && arr[arr.count - 2 - i] == 0 {
//            resulr = true
//            break
//        }
//    }
//    return resulr
//}
//
//
//solution(n: 11000)

// прикольно но я исходил из того что это должна была быть пара р]дом стоящих чисел

//func solution(n: Int) -> Bool {
//    var n = n
//    
//    while n % 10 < 1 {
//        n /= 10
//        print(n)
//    }
//
//    return "\(n)".contains("0")
//}
//
//solution(n: 902200100)

//We want to turn the given integer into a number that has only one non-zero digit using a tail rounding approach. This means that at each step we take the last non 0 digit of the number and round it to 0 or to 10. If it's less than 5 we round it to 0 if it's larger than or equal to 5 we round it to 10 (rounding to 10 means increasing the next significant digit by 1). The process stops immediately once there is only one non-zero digit left.


//func solution(n: Int) -> Int {
//    guard n > 10 else {
//        return n
//    }
//    var arrInt = String(n).map { Int(String($0))! }
//
//    for i in 0 ... arrInt.count - 2 {
//        if arrInt[arrInt.count - 1 - i] < 5 {
//            arrInt[arrInt.count - 1 - i] = 0
//        } else {
//            arrInt[arrInt.count - 1 - i] = 0
//            arrInt[arrInt.count - 2 - i] += 1
//        }
//    }
//
//    var answ = arrInt.map{ String($0) }.reduce("", +)
//    return Int(answ)!
//}
//
//solution(n: 1)

//func solution(n: Int) -> Int {
//    var n = n, x = 10
//
//    while x < n {
//        n += n%x < 5*x/10 ? -n%x : x-n%x
//        x *= 10
//    }
//
//    return n
//}

//When a candle finishes burning it leaves a leftover. makeNew leftovers can be combined to make a new candle, which, when burning down, will in turn leave another leftover.
//
//You have solutionNumber solution in your possession. What's the total number of solution you can burn, assuming that you create new solution as soon as you have enough leftovers?
//
//func solution(candlesNumber: Int, makeNew: Int) -> Int {
//    var result = candlesNumber
//    var candles = candlesNumber
//    var rest = 0
//
//    while candles > 0 {
//        rest += candles
//        candles = rest / makeNew
//        rest -= candles * makeNew
//        result += candles
//    }
//    return result
//}
//
//solution(candlesNumber: 5, makeNew: 3)
//
//// не понимаю как работает
//
//func soluti7on(solutionNumber: Int, makeNew: Int) -> Int {
//    return solutionNumber + (solutionNumber - 1) / (makeNew - 1)
//}
//
//
//soluti7on(solutionNumber: 5, makeNew: 3)


//Imagine a white rectangular grid of n rows and m columns divided into two parts by a diagonal line running from the upper left to the lower right corner. Now let's paint the grid in two colors according to the following rules:
//
//A cell is painted black if it has at least one point in common with the diagonal;
//Otherwise, a cell is painted white.
//Count the number of cells painted black.

// прекрасно работает кроме одного какого то теста
// не работает на больших числах тк не учитывает что в каком то
// месте может через границу квадратов пройти


//func solution(n: Int, m: Int) -> Int {
// let arr = [n, m]
//
//    if arr.min()! == 1 {
//        return arr.max()!
//    } else if arr.min()! == 2 {
//        return arr.max()! * 2 - 4
//    } else if Set(arr).count == 1 {
//        return arr[0] * 3 - 2
//    } else {
//        return arr.max()! * 2 - 2
//    }
//}


// разобрать

//func solutio44n(n: Int, m: Int) -> Int {
//    return m + n + gcd(m, n) - 2
//}
//
//func gcd(_ a: Int, _ b: Int) -> Int {
//    let remainder = a % b
//    return remainder != 0 ? gcd(b, remainder) : b
//}
//
//for i in 0 ... 1_000_000 {
//    let a = Int.random(in: (1 ... 100000))
//    let b = Int.random(in: (1 ... 100000))
//    
//    if solution(n: a, m: b) != solutio44n(n: a, m: b) {
//        print(a, b)
//        print(solution(n: a, m: b))
//        print(solutio44n(n: a, m: b))
//        break
//    }
//}

//Given an integer size, return array of length size filled with 1s.

//func solution(size: Int) -> [Int] {
//return Array(repeating: 1, count: size)
//}
//
//func solution(size: Int) -> [Int] {
//    return (1...size).map{ _ in 1 }
//}

//Given an array of integers, replace all the occurrences of elemToReplace with substitutionElem.

//func solution(inputArray: [Int], elemToReplace: Int, substitutionElem: Int) -> [Int] {
//    var arr = inputArray
//    for element in 0 ..< arr.count {
//        if arr[element] == elemToReplace {
//            arr[element] = substitutionElem
//        }
//    }
//    return arr
//}
//
//func solution(inputArray: [Int], elemToReplace: Int, substitutionElem: Int) -> [Int] {
//    return inputArray.map { $0 == elemToReplace ? substitutionElem : $0 }
//}

//Reversing an array can be a tough task, especially for a novice programmer. Mary just started coding, so she would like to start with something basic at first. Instead of reversing the array entirely, she wants to swap just its first and last elements.
//
//Given an array arr, swap its first and last elements and return the resulting array.
//
//func solution(arr: [Int]) -> [Int] {
//    guard !arr.isEmpty else {
//        return arr
//    }
//    var arrSol = arr
//    var first = arr.first!
//    var last = arr.last!
//
//    arrSol[0] = last
//    arrSol[arr.count - 1] = first
//    return arrSol
//}
//
//solution(arr: [1,3,4,5,6,7])
//
//
//func solution(arr: [Int]) -> [Int] {
//    if (arr.count < 2) {return arr}
//    return [arr.last!] + arr.dropFirst().dropLast() + [arr.first!]
//}

//Given two arrays of integers a and b, obtain the array formed by the elements of a followed by the elements of b.

//func solution(a: [Int], b: [Int]) -> [Int] {
//return a + b
//}

//Remove a part of a given array between given 0-based indexes l and r (inclusive).

//func solution(inputArray: [Int], l: Int, r: Int) -> [Int] {
//    return inputArray.prefix(l) + inputArray.suffix(inputArray.count - r - 1)
//}

//solution(inputArray: [2, 3, 2, 3, 4, 5], l: 2, r: 4)
//
//func solution(inputArray: [Int], l: Int, r: Int) -> [Int] {
//    var a = inputArray
//    a.removeSubrange(l...r)
//    return a
//}
