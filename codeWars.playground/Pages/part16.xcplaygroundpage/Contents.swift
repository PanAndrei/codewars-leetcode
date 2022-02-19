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
