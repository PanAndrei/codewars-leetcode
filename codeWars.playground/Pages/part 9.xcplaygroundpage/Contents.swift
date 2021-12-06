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
