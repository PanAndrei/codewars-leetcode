//: [Previous](@previous)

import Foundation

//Imagine a standard chess board with only two white and two black knights placed in their standard starting positions: the white knights on b1 and g1; the black knights on b8 and g8.
//
//There are two players: one plays for white, the other for black. During each move, the player picks one of his knights and moves it to an unoccupied square according to standard chess rules. Thus, a knight on d5 can move to any of the following squares: b6, c7, e7, f6, f4, e3, c3, and b4, as long as it is not occupied by either a friendly or an enemy knight.
//
//The players take turns in making moves, starting with the white player. Given the configuration p of the knights after an unspecified number of moves, determine whose turn it is.

//let position = "c3;g1;c6;g8"
//
//func solution(p: String) -> Bool {
//    guard p != "b1;g1;b8;g8" else { return true }
//    
//    let position = p.replacingOccurrences(of: ";", with: "").map { Int($0.utf8.first!) }.reduce(0, +)
//    
//    return (position - 612) % 2 == 0 ? true : false
//}
//
//solution(p: position)


//n ChessLand there is a small but proud chess bishop with a recurring dream. In the dream the bishop finds itself on an n × m chessboard with mirrors along each edge, and it is not a bishop but a ray of light. This ray of light moves only along diagonals (the bishop can't imagine any other types of moves even in its dreams), it never stops, and once it reaches an edge or a corner of the chessboard it reflects from it and moves on.
//
//Given the initial position and the direction of the ray, find its position after k steps where a step means either moving from one cell to the neighboring one or reflecting from a corner of the board.

//let boardSize = [17, 19], initPosition = [14, 8], initDirection = [1, -1], k = 239239

// очень долго
//func solution(boardSize: [Int], initPosition: [Int], initDirection: [Int], k: Int) -> [Int] {
//    var steps = 0
//    var position = initPosition
//    var direction = initDirection
//
//    while steps != k {
//        steps += 1
//
//        if (position[0] == 0 || position[0] == boardSize[0]) && (position[1] == 0 || position[1] == boardSize[1]) {
//            steps += 1
//            direction[0] *= -1
//            direction[1] *= -1
//        } else if position[0] == 0 || position[0] == boardSize[0] {
//            direction[0] *= -1
//        } else if position[1] == 0 || position[1] == boardSize[1] {
//            direction[1] *= -1
//        }
//        position[0] += direction[0]
//        position[1] += direction[1]
//    }
//
//    return position
//}
//
//solution(boardSize: boardSize, initPosition: initPosition, initDirection: initDirection, k: k)

//let boardSize = [17, 19], initPosition = [14, 8], initDirection = [1, -1], k = 239239
//let boardSize = [2, 2], initPosition = [1, 0], initDirection = [1, 1], k = 12
//
//// рпавильно но громоздко и не отлажено
//func solution(boardSize: [Int], initPosition: [Int], initDirection: [Int], k: Int) -> [Int] {
//    var position = initPosition
//    var initDirection = initDirection
//    var moveUP = k - ((k / (boardSize[0] * 2)) * (boardSize[0] * 2))
//    var moveDOWN = k - ((k / (boardSize[1] * 2)) * (boardSize[1] * 2))
//
//    if moveUP > boardSize[0] {
//        if initDirection[0] > 0 {
//            moveUP -= (boardSize[0] - position[0]) * 2
//            initDirection[0] *= -1
//        } else {
//            moveUP -= position[0] * 2
//            initDirection[0] *= -1
//        }
//    }
//
//    if moveDOWN > boardSize[1] {
//        if initDirection[1] > 0 {
//            moveDOWN -= (boardSize[1] - position[1]) * 2
//            initDirection[1] *= -1
//        } else {
//            moveDOWN -= position[1] * 2
//            initDirection[1] *= -1
//        }
//    }
//
//    if initDirection[0] > 0 {
//        if position[0] + moveUP > boardSize[0] {
//            position[0] = boardSize[0] - (moveUP - (boardSize[0] - position[0])) - 1
//        } else {
//            position[0] += moveUP
//        }
//    } else {
//        if position[0] - moveUP < 0 {
//            position[0] = moveUP - position[0] - 1
//        } else {
//            position[0] -= moveUP
//        }
//    }
//
//    if initDirection[1] > 0 {
//        if position[1] + moveDOWN > boardSize[1] {
//            position[1] = boardSize[1] - (moveDOWN - (boardSize[1] - position[1]))
//        } else {
//            position[1] += moveDOWN
//        }
//    } else {
//        if position[1] - moveDOWN < 0 {
//            position[1] = moveDOWN - position[1]
//        } else {
//            position[1] -= moveDOWN
//        }
//    }
//
//    return position
//}
//
//solution(boardSize: boardSize, initPosition: initPosition, initDirection: initDirection, k: k)
//
//// solution
//
//func solution(boardSize: [Int], initPosition: [Int], initDirection: [Int], k: Int) -> [Int] {
//    var result = [Int]()
//    for i in 0...1 {
//        let edge = boardSize[i]
//        let position = initPosition[i]
//        let direction = initDirection[i]
//        let k = k % (2 * edge)
//        var newPosition = direction * k + position
//        if newPosition < 0 {
//            newPosition = ~newPosition
//        }
//        let duplications = newPosition / edge
//        if duplications % 2 == 0 {
//            newPosition = newPosition % edge
//        } else {
//            newPosition = (edge - 1) * (duplications + 1) - newPosition + 1
//        }
//        result.append(newPosition)
//    }
//    return result
//}

//Consider a bishop, a knight and a rook on an n × m chessboard. They are said to form a triangle if each piece attacks exactly one other piece and is attacked by exactly one piece. Calculate the number of ways to choose positions of the pieces to form a triangle.
//
//Note that the bishop attacks pieces sharing the common diagonal with it; the rook attacks in horizontal and vertical directions; and, finally, the knight attacks squares which are two squares horizontally and one square vertically, or two squares vertically and one square horizontally away from its position.
//
//func solution(n: Int, m: Int) -> Int {
//    func isValid(x: Int, y: Int) -> Bool {
//        return x > 0 && x < (m + 1) && y > 0 && y < (n + 1)
//    }
//    guard n > 1 && m > 1 else { return 0 }
//    guard n > 2 || m > 2 else { return 0 }
//    var count = 0
//    for xK in 1...m {
//        for yK in 1...n {
//            for dxK in -2...2 {
//                for dyK in -2...2 {
//                    let x = xK + dxK
//                    let y = yK + dyK
//                    if abs(dxK * dyK) == 2 && isValid(x: x, y: y) {
//                        if x > xK {
//                            for xB in (2 * xK - x - 2)...(x + 1) {
//                                if isValid(x: xB, y: y) && abs(xK - xB) == abs(yK - y) {
//                                    count += 1
//                                }
//                            }
//                        } else {
//                            for xB in (x - 1)...(2 * xK - x + 1) {
//                                if isValid(x: xB, y: y) && abs(xK - xB) == abs(yK - y) {
//                                    count += 1
//                                }
//                            }
//                        }
//                        if y > yK {
//                            for yB in (2 * yK - y - 2)...(y + 1) {
//                                if isValid(x: x, y: yB) && abs(xK - x) == abs(yK - yB) {
//                                    count += 1
//                                }
//                            }
//                        } else {
//                            for yB in (y - 1)...(2 * yK - y + 1) {
//                                if isValid(x: x, y: yB) && abs(xK - x) == abs(yK - yB) {
//                                    count += 1
//                                }
//                            }
//                        }
//                        for d in [1, 2] {
//                            for f in [-1, 1] {
//                                if isValid(x: x + d * f, y: y + d) && ((x + d * f) == xK || (y + d) == yK) {
//                                    count += 1
//                                }
//                                if isValid(x: x + d * f, y: y - d) && ((x + d * f) == xK || (y - d) == yK) {
//                                    count += 1
//                                }
//                            }
//                        }
//                    }
//                }
//            }
//        }
//    }
//    return count
//}

//An amazon (also known as a queen + knight compound) is an imaginary chess piece that can move like a queen or a knight (or, equivalently, like a rook, bishop, or knight). The diagram below shows all squares which the amazon can attack from e4 (circles represent knight-like moves while crosses correspond to queen-like moves).
//
//
//
//Recently, you've come across a diagram with only three pieces left on the board: a white amazon, the white king, and the black king. It's black's move. You don't have time to determine whether the game is over or not, but you'd like to figure it out in your head. Unfortunately, the diagram is smudged and you can't see the position of the black king, so you'll need to consider all possible positions.
//
//Given the positions of the white pieces on a standard chessboard (using algebraic notation), your task is to determine the number of possible black king's positions such that:
//
//it's checkmate (i.e. black's king is under the amazon's attack and it cannot make a valid move);
//it's check (i.e. black's king is under the amazon's attack but it can reach a safe square in one move);
//it's stalemate (i.e. black's king is on a safe square but it cannot make a valid move);
//black's king is on a safe square and it can make a valid move.
//Note that two kings cannot be placed on two adjacent squares (including two diagonally adjacent ones).
//
//func solution(king: String, amazon: String) -> [Int] {
//    let king = position(of: king)
//    let amazon = position(of: amazon)
//    let prohibitions = movementArea(at: king)
//    let attacks = attackArea(at: amazon, with: king)
//    var checkmates = 0
//    var checks = 0
//    var stalemates = 0
//    var safes = 0
//    func isValid(position: (x: Int, y: Int)) -> Bool {
//        return !prohibitions.contains(where: { $0 == position }) && position != king && position != amazon
//    }
//    for x in 1...8 {
//        for y in 1...8 {
//            let position = (x, y)
//            if !isValid(position: position) { continue }
//            let movements = movementArea(at: position)
//            if attacks.contains(where: { $0 == position }) {
//                var count = 0
//                for movement in movements {
//                    if attacks.contains(where: { $0 == movement }) || prohibitions.contains(where: { $0 == movement }) {
//                        count += 1
//                    }
//                }
//                if count == movements.count {
//                    checkmates += 1
//                } else {
//                    checks += 1
//                }
//            } else {
//                var count = 0
//                for movement in movements {
//                    if attacks.contains(where: { $0 == movement }) || prohibitions.contains(where: { $0 == movement }) {
//                        count += 1
//                    }
//                }
//                if count == movements.count {
//                    stalemates += 1
//                } else {
//                    safes += 1
//                }
//            }
//        }
//    }
//    return [checkmates, checks, stalemates, safes]
//}
//
//func movementArea(at position: (x: Int, y: Int)) -> [(x: Int, y: Int)] {
//    var result = [(Int, Int)]()
//    for dx in -1...1 {
//        for dy in -1...1 where ((dx != 0 || dy != 0) && isValid(x: position.x + dx, y: position.y + dy)) {
//            result.append((position.x + dx, position.y + dy))
//        }
//    }
//    return result
//}
//
//func attackArea(at position: (x: Int, y: Int), with king: (x: Int, y: Int)) -> [(x: Int, y: Int)] {
//    var result = [(x: Int, y: Int)]()
//
//    for dx in -2 ... 2 {
//        for dy in -2 ... 2 where (abs(dx * dy) == 2 && isValid(x: position.x + dx, y: position.y + dy)) {
//            result.append((position.x + dx, y: position.y + dy))
//        }
//    }
//
//    var startX = 1
//    var endX = 8
//    if position.y == king.y {
//        if position.x > king.x {
//            startX = king.x + 1
//        } else {
//            endX = king.x - 1
//        }
//    }
//    for x in startX...endX where x != position.x {
//        result.append((x, position.y))
//    }
//    var startY = 1
//    var endY = 8
//    if position.x == king.x {
//        if position.y > king.y {
//            startY = king.y + 1
//        } else {
//            endY = king.y - 1
//        }
//    }
//    for y in startY...endY where y != position.y {
//        result.append((position.x, y))
//    }
//
//    var d = min(position.x, position.y)
//    for i in 1..<d {
//        if (position.x - i, position.y - i) == king { break }
//        result.append((position.x - i, position.y - i))
//    }
//    d = min(9 - position.x, position.y)
//    for i in 1..<d {
//        if (position.x + i, position.y - i) == king { break }
//        result.append((position.x + i, position.y - i))
//    }
//    d = min(position.x, 9 - position.y)
//    for i in 1..<d {
//        if (position.x - i, position.y + i) == king { break }
//        result.append((position.x - i, position.y + i))
//    }
//    d = min(9 - position.x, 9 - position.y)
//    for i in 1..<d {
//        if (position.x + i, position.y + i) == king { break }
//        result.append((position.x + i, position.y + i))
//    }
//
//    return result
//}
//
//func position(of square: String) -> (x: Int, y: Int) {
//    guard let first = square.utf8.first,
//        let last = square.last,
//        let y = Int(String(last)) else {
//            return (1, 1)
//    }
//    let x = Int(first % 97 + 1)
//    guard isValid(x: x, y: y) else { return (1, 1) }
//    return (x, y)
//}
//
//func isValid(x: Int, y: Int) -> Bool {
//    return x > 0 && x < 9 && y > 0 && y < 9
//}
//
//public func == (lhs: (x: Int, y: Int), rhs: (x: Int, y: Int)) -> Bool {
//    return lhs.x == rhs.x && lhs.y == rhs.y
//}

//Pawn race is a game for two people, played on an ordinary 8 × 8 chessboard. The first player has a white pawn, the second one - a black pawn. Initially the pawns are placed somewhere on the board so that the 1st and the 8th rows are not occupied. Players take turns to make a move.
//
//White pawn moves upwards, black one moves downwards. The following moves are allowed:
//
//one-cell move on the same vertical in the allowed direction;
//two-cell move on the same vertical in the allowed direction, if the pawn is standing on the 2nd (for the white pawn) or the 7th (for the black pawn) row. Note that even with the two-cell move a pawn can't jump over the opponent's pawn;
//capture move one cell forward in the allowed direction and one cell to the left or to the right.
//
//
//The purpose of the game is to reach the the 1st row (for the black pawn) or the 8th row (for the white one), or to capture the opponent's pawn.
//
//Given the initial positions and whose turn it is, determine who will win or declare it a draw (i.e. it is impossible for any player to win). Assume that the players play optimally.

//let white = "e2", black = "e7", toMove: Character = "w" // draw
//let white = "e3", black = "d7", toMove: Character = "b" // black
//let white = "f2", black = "e5", toMove: Character = "w"
//
//func moveW(position: [Int]) -> [Int] {
//    var newPosition = position
//
//    if newPosition[1] == 50 {
//        newPosition[1] = newPosition[1] + 2
//    } else {
//        newPosition[1] = newPosition[1] + 1
//    }
//
//    return newPosition
//}
//
//func moveB(position: [Int]) -> [Int] {
//    var newPosition = position
//
//    if newPosition[1] == 55 {
//        newPosition[1] = newPosition[1] - 2
//    } else {
//        newPosition[1] = newPosition[1] - 1
//    }
//
//    return newPosition
//}
//
//// можно подумать насчет быстрой проверки если они на рядах дальше одного стоят
//// решил на 90 / 100 - не учитывает случаи когда стоит 1 ход сделать а не 2
//
//func solution(white: String, black: String, toMove: Character) -> String {
//    guard white.utf8.first! != black.utf8.first! else { return "draw" }
//
//    var whitePos = white.map { Int($0.utf8.first!) }
//    var blackPos = black.map { Int($0.utf8.first!) }
//    print("init white = \(whitePos)")
//    print("init black = \(blackPos)")
//    var toMove = toMove
//
//    for _ in 1 ... 16 {
//        if toMove == "w" {
//            if blackPos[1] - whitePos[1] == -1 && abs(blackPos[0] - whitePos[0]) == 1 {
//                return "white"
//            } else {
//               whitePos = moveW(position: whitePos)
//                if whitePos[1] == 56 {
//                    return "white"
//                }
//            }
//            print("whitePos = \(whitePos)")
//            toMove = "b"
//        } else {
//            if blackPos[1] - whitePos[1] == 1 && abs(blackPos[0] - whitePos[0]) == 1 {
//                return "black"
//            } else {
//               blackPos = moveB(position: blackPos)
//                if blackPos[1] == 49 {
//                    return "black"
//                }
//            }
//            print("blackPos = \(blackPos)")
//            toMove = "w"
//        }
//    }
//    return "draw"
//}
//
//solution(white: white, black: black, toMove: toMove)

// решение

//func solution(white: String, black: String, toMove: Character) -> String {
//    let white = position(of: white)
//    let black = position(of: black)
//    if (white.x == black.x && white.y < black.y) {
//        return "draw"
//    }
//    if abs(white.x - black.x) != 1 || white.y >= black.y {
//        let whiteDy = min(8 - white.y, 5)
//        let blackDy = min(black.y - 1, 5)
//        if (whiteDy <= blackDy && toMove != "b") || (whiteDy < blackDy && toMove != "w") {
//            return "white"
//        }
//        return "black"
//    }
//    let winningPairs = [[2, 5], [2, 6], [3, 6], [4, 7]]
//    if toMove == "w" {
//        for i in 0..<4 where (white.y == winningPairs[i][0] && black.y == winningPairs[i][1]) {
//            return "white"
//        }
//        if (white.y + 1) == black.y {
//            return "white"
//        }
//        return "black"
//    } else {
//        for i in 0..<4 where (white.y == (9 - winningPairs[i][1]) && black.y == (9 - winningPairs[i][0])) {
//            return "black"
//        }
//        if (white.y + 1) == black.y {
//            return "black"
//        }
//        return "white"
//    }
//}
//
//func position(of square: String) -> (x: Int, y: Int) {
//    guard let first = square.utf8.first,
//        let last = square.last,
//        let y = Int(String(last)) else {
//            return (1, 1)
//    }
//    let x = Int(first % 97 + 1)
//    guard isValid(x: x, y: y) else { return (1, 1) }
//    return (x, y)
//}
//
//func isValid(x: Int, y: Int) -> Bool {
//    return x > 0 && x < 9 && y > 0 && y < 9
//}
