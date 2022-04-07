//: [Previous](@previous)

import Foundation
import Darwin

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

//var arr = Array(1 ... 500)
//let b = arr.filter { $0 % 15 == 0 }
//var ttt = Array(1 ... 300)
//let c = ttt.filter { $0 % 3 == 0 && $0 % 5 == 0}
//
//b == c
//
////print(b)
//
//func calcSum(arr: [Int]) -> [Int] {
//    var answer = [Int]()
//    var mult = [Int]()
//
//    for element in arr {
//        var str = String(element).compactMap { Int(String($0)) }.reduce(0, +)
//        answer.append(str)
//    }
////    print(answer)
//
//    for element in arr {
//        let b = element / 15
//        mult.append(b)
//    }
//
////    print(mult)
//
//    return answer
//}
//
//calcSum(arr: b)
//
//
//func checkSum(_ num: Int) -> Bool {
//    return String(num).compactMap { Int(String($0)) }.reduce(0, +) <= 10
//}
//
//func checkArr(arr: [Int]) -> [Int] {
//    return arr.filter { $0 % 15 == 0 && checkSum($0) }
//}
//
//checkArr(arr: b)

//let a = 3, b = 5, c = 3
//
//a^b^c

//Carlos always loved playing video games, especially the well-known computer game "Pipes". Today he finally decided to write his own version of the legendary game from scratch.
//
//In this game the player has to place the pipes on a rectangular field to make water pour from each source to a respective sink. He has already come up with the entire program, but one question still bugs him: how can he best check that the arrangement of pipes is correct?
//
//It's your job to help him figure out exactly that.
//
//Carlos has 7 types of pipes in his game, with numbers corresponding to each type:
//
//1 - vertical pipe
//2 - horizontal pipe
//3-6 - corner pipes
//7 - two pipes crossed in the same cell (note that these pipes are not connected)
//Here they are, pipes 1 to 7, respectively:
//
//
//
//Water pours from each source in each direction that has a pipe connected to it (thus it can even pour in all four directions). The puzzle is solved correctly only if all water poured from each source eventually reaches a corresponding sink.
//
//Help Carlos check whether the arrangement of pipes is correct. If it is correct, return the number of cells with pipes that will be full of water at the end of the game. If not, return -X, where X is the number of cells with water before the first leakage point is reached, or if the first drop of water reaches an incorrect destination (whichever comes first). Assume that water moves from one cell to another at the same speed.

//3 ~= 5

//typealias Position = (row: Int, col: Int)
//typealias Path = (source: String, path: [Position], dir: Dir, curPos: Position)
//
//enum Square {
//    case source(String)
//    case sink(String)
//    case empty(Bool)
//    case vertical(Bool)
//    case horizontal(Bool)
//    case bottomRight(Bool)
//    case bottomLeft(Bool)
//    case topLeft(Bool)
//    case topRight(Bool)
//    case crossing(v: Bool, h: Bool)
//
//}
//
//func initSquare(_ ch: Character) -> Square {
//    switch ch {
//    case let s where "a"..."z" ~= s: return .source(String(s))
//    case let s where "A"..."Z" ~= s: return .sink(String(s))
//    case "1": return .vertical(false)
//    case "2": return .horizontal(false)
//    case "3": return .bottomRight(false)
//    case "4": return .bottomLeft(false)
//    case "5": return .topLeft(false)
//    case "6": return .topRight(false)
//    case "7": return .crossing(v: false, h: false)
//    default: return .empty(false)
//    }
//}
//
//func fill(pipe: Square, dir: Dir) -> Square {
//    switch (pipe,dir) {
//    case (.empty(_), _): return .empty(true)
//    case (.vertical(_), .up), (.vertical(_), .down): return .vertical(true)
//    case (.horizontal(_), .left), (.horizontal(_), .right): return .horizontal(true)
//    case (.bottomRight(_), .up), (.bottomRight(_), .left): return .bottomRight(true)
//    case (.bottomLeft(_), .up), (.bottomLeft(_), .right): return .bottomLeft(true)
//    case (.topRight(_), .down), (.topRight(_), .left): return .topRight(true)
//    case (.topLeft(_), .down), (.topLeft(_), .right): return .topLeft(true)
//    case (.crossing(v: _, h: let hf), .up), (.crossing(v: _, h: let hf), .down): return .crossing(v: true, h: hf)
//    case (.crossing(v: let vf, h: _), .left), (.crossing(v: let vf, h: _), .right): return .crossing(v: vf, h: true)
//    default: return pipe
//    }
//}
//
//func fetch<T>(from arr: [[T]], at: Position) -> T? {
//    let rows = arr.count
//    guard 0..<rows ~= at.row else { return nil }
//    let cols = arr[at.row].count
//    guard 0..<cols ~= at.col else { return nil }
//    return arr[at.row][at.col]
//}
//
//enum Dir {
//    case up, down, left, right
//    case done(String)
//}
//
//enum GameState: String {
//    case initializing = "Initializing", running = "Running", correct = "Correct", failed = "Failed"
//}
//
//class Board: CustomStringConvertible {
//    var state = [[Square]]()
//    var rows: Int, cols: Int
//    var frontier = [Path]()
//    var status: GameState
//
//    var description: String {
//        let stateStr = state.map { row in row.map { sq in "\(sq)" }.joined() }.joined(separator: "\n")
//        return "\(stateStr)\nfrontier: \(String(describing: frontier))\nstatus: \(self.status.rawValue)"
//    }
//
//    init(_ table: [String]) {
//        var sources = [(Square,Position)]()
//        for (rIdx,row) in table.enumerated() {
//            var sRow = [Square]()
//            for (cIdx,ch) in row.map { $0 }.enumerated() {
//                let sq = initSquare(ch)
//                if case .source(_) = sq { sources.append((sq, (row: rIdx, col: cIdx))) }
//                sRow.append(sq)
//            }
//            state.append(sRow)
//        }
//        rows = state.count
//        cols = state[0].count
//        status = .initializing
//        for source in sources {
//            for (newPos,d) in ([.up, .down, .left, .right].map { dir in return (self.move(pos: source.1, dir: dir), dir) }) {
//                guard newPos != nil else { continue }
//                if case let .done(sink) = newPos!.1 {
//                    if case let .source(src) = source.0 {
//                        if src != sink { continue }
//                    }
//                }
//                if case let .source(name) = source.0 { frontier.append((source: name, path: [], dir: d, curPos: source.1)) }
//            }
//        }
//        status = frontier.isEmpty ? .correct : .running
//    }
//
//    func move(pos: Position, dir: Dir) -> (Position,Dir)? {
//        var newPos = (row: pos.row, col: pos.col)
//        switch dir {
//        case .down: newPos.row += 1
//        case .up: newPos.row -= 1
//        case .left: newPos.col -= 1
//        case .right: newPos.col += 1
//        case .done: break
//        }
//        guard let sq = fetch(from: state, at: newPos) else { return nil }
//        switch (dir,sq) {
//        case (_, .sink(let sinkName)): return (newPos, .done(sinkName))
//        case (_, .crossing(_)): return (newPos,dir)
//        case (.up,.vertical(_)), (.down, .vertical(_)), (.left, .horizontal(_)), (.right, .horizontal(_)): return (newPos, dir)
//        case (.up, .bottomLeft(_)), (.down, .topLeft(_)): return (newPos, .left)
//        case (.up, .bottomRight(_)), (.down, .topRight(_)): return (newPos, .right)
//        case (.left, .bottomRight(_)), (.right, .bottomLeft(_)): return (newPos, .down)
//        case (.left, .topRight(_)), (.right, .topLeft(_)): return (newPos, .up)
//        default: return nil
//        }
//    }
//
//    func step() {
//        var newState = [(sq: Square, row: Int, col: Int)]()
//        let stepPath: (Path) -> Path? = { p in
//            if let nextPos = self.move(pos: p.curPos, dir: p.dir) {
//                if case let .done(sinkName) = nextPos.1 {
//                    if sinkName.lowercased() != p.source { self.status = .failed }
//                    return nil
//                }
//                newState.append((sq: fill(pipe: self.state[nextPos.0.row][nextPos.0.col], dir: p.dir), row: nextPos.0.row, col: nextPos.0.col))
//                return (source: p.source, path: p.path+[p.curPos], dir: nextPos.1, curPos: nextPos.0)
//            } else {
//                self.status = .failed
//                return nil
//            }
//        }
//        let newFront = frontier.flatMap(stepPath)
//        if self.status != .failed {
//            for st in newState { self.state[st.row][st.col] = st.sq }
//            frontier = newFront
//            if frontier.isEmpty { self.status = .correct }
//        }
//    }
//
//    func countWater() -> Int {
//        var count = 0
//        for r in 0..<self.state.count {
//            for c in 0..<self.state[0].count {
//                switch state[r][c] {
//                case .vertical(true), .horizontal(true), .bottomLeft(true), .bottomRight(true), .topLeft(true), .topRight(true), .crossing(v: true, h: _), .crossing(v: _, h: true): count += 1
//                default: continue
//                }
//            }
//        }
//        return count
//    }
//
//    func run() -> Int {
//        while self.status == .running {
//            self.step()
//            switch self.status {
//            case .correct: return countWater()
//            case .failed: return -(countWater())
//            default: continue
//            }
//        }
//        return 0
//    }
//
//}
//
//func solution(state: [String]) -> Int {
//    let board = Board(state)
//    return board.run()
//}

//func calcOne(num: Int) -> Int {
//    return String(num, radix: 2).map { String($0) }.filter { $0 == "1"}.count
//}
//
//calcOne(num: 355)

//func getPassword(withNums num: UInt) -> String {
//    var password = ""
//    for _ in 0 ..< num {
//        password.append(Character(UnicodeScalar((97...122).randomElement()!)!))
//    }
//    print(password)
//    return password
//}
//
//getPassword(withNums: 6)

//John has always had trouble remembering chess game positions. To help himself with remembering, he decided to store game positions in strings. He came up with the following position notation:
//
//The notation is built for the current game position row by row from top to bottom, with '/' separating each row notation;
//Within each row, the contents of each square are described from the leftmost column to the rightmost;
//Each piece is identified by a single letter taken from the standard English names ('P' = pawn, 'N' = knight, 'B' = bishop, 'R' = rook, 'Q' = queen, 'K' = king);
//White pieces are designated using upper-case letters ("PNBRQK") while black pieces use lowercase ("pnbrqk");
//Empty squares are noted using digits 1 through 8 (the number of empty squares from the last piece);
//Empty lines are noted as "8".
//For example, for the initial position (shown in the picture below) the notation will look like this:
//
//"rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR"
//
//
//
//After the white pawn moves from e2 to e4, the notation will be as follows:
//
//"rnbqkbnr/pppppppp/8/8/4P3/8/PPPP1PPP/RNBQKBNR"
//
//John has written down some positions using his notation, and now he wants to rotate the board 90 degrees clockwise and see what notation for the new board would look like. Help him with this task.

//func solution(notation: String) -> String {
//    var rotate  = [[String]](repeating: [], count: 8)
//    var notation = notation.components(separatedBy: "/").map { str -> [String] in
//        return Array(str).map { String($0) }
//    }
//    for r in 0..<notation.count {
//        var c = 0
//        while c < notation[r].count {
//            if let number = Int(notation[r][c]) {
//                notation[r][c...c] = ArraySlice<String>(repeating: "0", count: number)
//                c += number
//                continue
//            }
//            c += 1
//        }
//    }
//    for i in 0...7 {
//        var str = ""
//        var countZero = 0
//        for j in 0...7 {
//            if notation[j][i] == "0" {
//                countZero += 1
//                continue
//            }
//            if countZero > 0 {
//                str = "\(countZero)" + str
//            }
//            str = notation[j][i] + str
//            countZero = 0
//        }
//        if countZero > 0 {
//            str = "\(countZero)" + str
//        }
//        rotate[i] = Array(str).map { String($0) }
//    }
//    return rotate.map { $0.joined() }.joined(separator: "/")
//}
//

//Given a string which represents a valid arithmetic expression, find the index of the character in the given expression corresponding to the arithmetic operation which needs to be computed first.
//
//Note that several operations of the same type with equal priority are computed from left to right.
//
//See the explanation of the third example for more details about the operations priority in this problem.

//func solution(expr: String) -> Int {
//    let expr = Array(expr)
//    var temp = expr
//    var startIndex = 0
//    var priorities = [(index: Int, operation: String)]()
//    while let close = temp.firstIndex(of: ")"), let open = temp[0..<close].lastIndex(of: "(") {
//        let plus = findOperation(in: Array(temp[open...close]))
//        priorities.append((startIndex + open + plus.index, plus.operation))
//        if let index = temp[close...].firstIndex(of: "(") {
//            startIndex += index
//            temp = Array(expr[startIndex...])
//            continue
//        }
//        break
//    }
//    guard !priorities.isEmpty else { return findOperation(in: expr).index }
//    if let priority = priorities.first(where: { $0.operation == "*" }) {
//        return priority.index
//    }
//    return priorities[0].index
//}
//
//func findOperation(in arr: [Character]) -> (index: Int, operation: String) {
//    if let index = arr.firstIndex(of: "*") {
//        return (index, "*")
//    }
//    if let index = arr.firstIndex(of: "+") {
//        return (index, "+")
//    }
//    return (0, "")
//}

//You've been invited to a job interview at a famous company that tests programming challenges. To evaluate your coding skills, they have asked you to parse a given problem's input given as an inputString string, and count the number of primitive type elements within it.
//
//The inputString can be either a primitive type variable or an array (possibly multidimensional) that contains elements of the primitive types.
//A primitive type variable can be:
//
//an integer number;
//a string, which is surrounded by " characters (note that it may contain any character except ");
//a boolean, which is either true or false.
//Return the total number of primitive type elements inside inputString.


//func solution(inputString: String) -> Int {
//    if inputString == "[]" { return 0 }
//    let pattern = "(\".*?\")"
//    let regex = try! NSRegularExpression(pattern: pattern, options: [])
//    let str = regex.stringByReplacingMatches(in: inputString, options: [], range: NSRange(location: 0, length: inputString.count), withTemplate: " ")
//    return str.components(separatedBy: ",").count
//}


//You are given a recursive notation of a binary tree: each node of a tree is represented as a set of three elements:
//
//value of the node;
//left subtree;
//right subtree.
//So, a tree can be written as (value left_subtree right_subtree). It is guaranteed that 1 ≤ value ≤ 109. If a node doesn't exist then it is represented as an empty set: (). For example, here is a representation of a tree in the given picture:
//
//(2 (7 (2 () ()) (6 (5 () ()) (11 () ()))) (5 () (9 (4 () ()) ())))
//
//
//Your task is to obtain a list of nodes, that are the most distant from the tree root, in the order from left to right.
//
//In the notation of a node its value and subtrees are separated by exactly one space character.

//While exploring the ruins of a golden lost city, you discovered an ancient manuscript containing series of strange symbols. Thanks to your profound knowledge of dead languages, you realized that the text was written in one of the dialects of Befunge-93. Looks like the prophecy was true: you are the one who can find the answer to the Ultimate Question of Life! Of course you brought your futuristic laptop with you, so now you just need a function that will run the encrypted message and make you the all-knowing human being.
//
//Befunge-93 is a stack-based programming language, the programs for which are arranged in a two-dimensional torus grid. The program execution sequence starts at the top left corner and proceeds to the right until the first direction instruction is met (which can appear in the very first cell). The torus adjective means that the program never leaves the grid: when it encounters a border, it simply goes to the next command at the opposite side of the grid.
//
//You need to write a function that will be able to execute the given Befunge-93 program. Unfortunately your laptop, futuristic that it is, can't handle more than 105 instructions and will probably catch on fire if you try to execute more, so the function should exit after 105 commands. The good news is, the prophesy said that the answer to the Ultimate Question of Life contains no more than 100 symbols, so the function should return the program output once it contains 100 symbols.
//
//The dialect of Befunge-93 in the manuscript consists of the following commands:
//
//direction instructions:
//>: start moving right
//<: start moving left
//v: start moving down
//^: start moving up
//#: bridge; skip next cell
//conditional instructions:
//_: pop a value; move right if value = 0, left otherwise
//|: pop a value; move down if value = 0, up otherwise
//math operators:
//+: addition; pop a, pop b, then push a + b
//-: subtraction; pop a, pop b, then push b - a
//*: multiplication; pop a, pop b, then push a * b
///: integer division; pop a, pop b, then push b / a
//%: modulo operation; pop a, pop b, then push b % a
//logical operators:
//!: logical NOT; pop a value, if the value = 0, push 1, otherwise push 0
//`: greater than; pop a and b, then push 1 if b > a, otherwise 0
//stack instructions:
//:: duplicate value on top of the stack
//\: swap the top stack value with the second to the top
//$: pop value from the stack and discard it
//output instructions:
//.: pop value and output it as an integer followed by a space
//,: pop value and output it as ASCII character
//digits 0-9: push the encountered number on the stack
//": start string mode; push each character's ASCII value all the way up to the next "
//  (whitespace character): empty instruction; does nothing
//@: end program; the program output should be returned then
//If the stack is empty and it is necessary to pop a value, no exception is raised; instead, 0 is produced.
//
//Example
//
//For
//
//program = [
//    "               v",
//    "v  ,,,,,"Hello"<",
//    ">48*,          v",
//    ""!dlroW",,,,,,v>",
//    "25*,@         > "
//]
//the output should be solution(program) = "Hello World!\n".
//
//Note, that in the tests tab you will see a \ as an escape symbol before each ".
//
//enum Dir: CustomStringConvertible {
//    case up, down, left, right
//
//    var description: String { switch self { case .up: return "up" case .down: return "down" case .left: return "left" default: return "right" } }
//}
//
//func solution(program: [String]) -> String {
//    let fProg = program.map { $0.replacingOccurrences(of: "\\\"", with: "\"") }.map { $0.replacingOccurrences(of: "\\\\", with: "\\")}
//    //for row in program { print("row: [\(row)] ; len: \(row.characters.count)") }
//    print("-------------------------")
//    //for row in fProg { print("row: [\(row)] ; len: \(row.characters.count)") }
//
//    let prog = fProg.map { Array($0) }
//    let rows = prog.count, cols = prog[0].count
//    var cursor = (row: 0, col: 0), tape = "", stepsLeft = 10000, tapeLeft = 100, dir = Dir.right
//    var stack = [Int]()
//
//    let move: (Dir) -> () = { (dir) in
//        switch dir {
//        case .up: cursor.row = (cursor.row + rows - 1) % rows
//        case .down: cursor.row = (cursor.row + 1) % rows
//        case .right: cursor.col = (cursor.col + 1) % cols
//        case .left: cursor.col = (cursor.col + cols - 1) % cols
//        }
//    }
//    let next: () -> Character = { prog[cursor.row][cursor.col] }
//    let pop: () -> Int = { stack.popLast() ?? 0 }
//    let push: (Int) -> () = { stack.append($0) }
//
//    while stepsLeft > 0 && tapeLeft > 0 {
//        //print("cursor: \(cursor), next: '\(next())', dir: \(dir), stackEnd: \(stack.suffix(5)), stepsLeft: \(stepsLeft), tapeLeft: \(tapeLeft)\ntape: \"\(tape)\"\n")
//        switch next() {
//        case ">": dir = .right
//        case "<": dir = .left
//        case "v": dir = .down
//        case "^": dir = .up
//        case "#": move(dir)
//        case "_": dir = pop() == 0 ? .right : .left //move(.right) : move(.left)
//        case "|": dir = pop() == 0 ? .down : .up //move(.down) : move(.up)
//        case "+": let a = pop(); let b = pop(); push(a + b)
//        case "-": let a = pop(); let b = pop(); push(b - a)
//        case "*": let a = pop(); let b = pop(); push(a * b)
//        case "/": let a = pop(); let b = pop(); push(b / a)
//        case "%": let a = pop(); let b = pop(); push(b % a)
//        case "!": push(pop() == 0 ? 1 : 0)
//        case "`": let a = pop(); let b = pop(); push(b > a ? 1 : 0)
//        case ":": let a = pop(); push(a); push(a)
//        case "\\": let a = pop(), b = pop(); push(a); push(b)
//        case "$": let _ = pop()
//        case ".": let i = pop(); let s = "\(i) "; let c = s.map { $0 }.count; tape.append(s); tapeLeft -= c
//        case ",": let i = pop(); let c = Character(UnicodeScalar(i)!); tape.append(c); tapeLeft -= 1
//        case let d where "0"..."9" ~= d: push(Int(String(d))!)
//        case "\"": move(dir); while next() != "\"" { let i = String(next()).unicodeScalars.filter { $0.isASCII }.first?.value ?? 0; push(Int(i)); move(dir) }
//        case " ": move(dir); stepsLeft -= 1; continue
//        case "@": return tape
//        default: return "FAILURE"
//        }
//        stepsLeft -= 1
//        move(dir)
//    }
//
//    let output = Array(tape.map{ $0 }).prefix(100)
//    return output.map { String($0) }.joined()
//}
