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
