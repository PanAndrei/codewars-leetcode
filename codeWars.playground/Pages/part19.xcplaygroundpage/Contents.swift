//: [Previous](@previous)

import Foundation

// sort array

//struct Model {
//    let width: Int
//    let height: Int
//    let deep: Int
//
//    init(width: Int, height: Int, deep: Int) {
//        self.width = width
//        self.height = height
//        self.deep = deep
//    }
//}
//
//let m1 = Model(width: 10, height: 10, deep: 10)
//let m2 = Model(width: 5, height: 0, deep: 5)
//let m3 = Model(width: 0, height: 0, deep: 5)
//let m4 = Model(width: 0, height: 0, deep: 0)
//
//let arr = [m1, m2, m3, m4]
//
//func sortModels(models: [Model]) -> [Model] {
//    var arr1 = [Model]()
//    var arr2 = [Model]()
//}

//You are most likely familiar with the game 2048.
//
//2048 is played on a gray 4 × 4 grid with numbered tiles that slide smoothly when a player moves them using one of the four arrow keys - Up, Down, Left or Right. On every turn, a new tile with a value of either 2 or 4 randomly appears on an empty spot of the board. After one of the keys is pressed, the tiles slide as far as possible in the chosen direction until they are stopped either by another tile or by the edge of the grid. If two tiles with the same number collide while moving, they merge into a tile with this number doubled. You can't merge an already merged tile in the same turn. If there are more than 2 tiles in the same row (column) that can merge, the farthest (closest to an edge) pair will be merged first (see the second example).
//
//In this problem you are not going to solve the 2048 puzzle, but you are going to find the final state of the board from the given one after a defined set of n arrow key presses, assuming that no new random tiles will appear on the empty spots.
//
//The following example shows the next state of the board after pressing Right
//
//func solution(grid: [[Int]], path: String) -> [[Int]] {
//    var grid = grid
//    let steps = Array(path)
//    enum Direction {
//        case left, right, up, down
//        var d: Int {
//            switch self {
//            case .left, .up: return 1
//            case .right, .down: return -1
//            }
//        }
//    }
//    func move(dir: Direction) {
//        for i in 0...3 {
//            var arr = [Int]()
//            switch dir {
//            case .left, .right: arr = grid[i].filter { $0 != 0 }
//            case .up, .down: arr = (0...3).map { grid[$0][i] }.filter { $0 != 0 }
//            }
//            if arr.isEmpty { continue }
//            switch dir  {
//            case .left, .up:
//                for j in 0..<(arr.count - 1) where (arr[j] == arr[j + dir.d] && arr[j] != 0) {
//                    arr[j] += arr[j + dir.d]
//                    arr[j + dir.d] = 0
//                }
//            case .right, .down:
//                for j in (1..<arr.count).reversed() where (arr[j] == arr[j + dir.d] && arr[j] != 0) {
//                    arr[j] += arr[j + dir.d]
//                    arr[j + dir.d] = 0
//                }
//            }
//            arr = arr.filter { $0 != 0 }
//            while arr.count < 4 {
//                switch dir {
//                case .left, .up: arr.append(0)
//                case .right, .down: arr.insert(0, at: 0)
//                }
//            }
//            switch dir {
//            case .left, .right: grid[i] = arr
//            case .up, .down: for j in 0...3 { grid[j][i] = arr[j] }
//            }
//        }
//    }
//    for step in steps {
//        switch step {
//        case "L":
//            move(dir: .left)
//        case "R":
//            move(dir: .right)
//        case "U":
//            move(dir: .up)
//        case "D":
//            move(dir: .down)
//        default:
//            break
//        }
//    }
//    return grid
//}


//Your task is to imitate a turn-based variation of the popular "Snake" game
//
//You are given the initial configuration of the board and a list of commands which the snake follows one-by-one. The game ends if one of the following happens:
//
//the snake tries to eat its tail;
//the snake tries to move out of the board;
//it executes all the given commands.
//Output the board configuration after the game ends.

//func solution(gameBoard: [[Character]], commands: String) -> [[Character]] {
//    let w = gameBoard[0].count
//    let h = gameBoard.count
//    var x = 0
//    var y = 0
//    var dx = 0
//    var dy = 0
//    for j in 0..<h {
//        for i in 0..<w {
//            let c = gameBoard[j][i]
//            if c == Character(".") || c == Character("*") { continue }
//            switch c {
//            case Character("^"): x = i ; y = j ; dy = -1
//            case Character("v"): x = i ; y = j ; dy = +1
//            case Character("<"): x = i ; y = j ; dx = -1
//            case Character(">"): x = i ; y = j ; dx = +1
//            default: break
//            }
//        }
//    }
//    var snake = [(Int,Int)]()
//    snake.append((x,y))
//    
//    func check(x: Int, _ y: Int) -> Bool {
//        for s in snake {
//            if s.0 == x && s.1 == y { return true }
//        }
//        return false
//    }
//    
//    var ox = -10
//    var oy = -10
//    while true {
//        var nx = x
//        var ny = y
//        if ox != x+1 && x+1 < w && gameBoard[y][x+1] == Character("*") {
//            nx = x+1
//        } else if ox != x-1 && x-1 >= 0 && gameBoard[y][x-1] == Character("*") {
//            nx = x-1
//        } else if oy != y+1 && y+1 < h && gameBoard[y+1][x] == Character("*") {
//            ny = y+1
//        } else if oy != y-1 && y-1 >= 0 && gameBoard[y-1][x] == Character("*") {
//            ny = y-1
//        } else {
//            break
//        }
//        snake.insert((nx,ny), at: 0)
//        ox = x
//        oy = y
//        x = nx
//        y = ny
//    }
//    
//    //
//    for d in commands.map { $0 } {
//        switch d {
//        case Character("F"):
//            let hh = snake.last!
//            let x = hh.0 + dx
//            let y = hh.1 + dy
//            if x < 0 || x >= w || y < 0 || y >= h || check(x: x,y) {
//                // dead
//                var o = gameBoard
//                for j in 0..<h {
//                    for i in 0..<w {
//                        o[j][i] = Character(check(x: i,j) ? "X" : ".")
//                    }
//                }
//                return o
//            } else {
//                snake.removeFirst()
//                snake.append((x,y))
//            }
//        case Character("L"):
//            if dx == 1 { dx = 0 ; dy = -1 }
//            else if dx == -1 { dx = 0 ; dy = 1 }
//            else if dy == 1 { dx = 1 ; dy = 0 }
//            else if dy == -1 { dx = -1 ; dy = 0 }
//        case Character("R"):
//            if dx == 1 { dx = 0 ; dy = 1 }
//            else if dx == -1 { dx = 0 ; dy = -1 }
//            else if dy == 1 { dx = -1 ; dy = 0 }
//            else if dy == -1 { dx = 1 ; dy = 0 }
//        default: break
//        }
//    }
//    
//    // alive
//    var o = gameBoard
//    for j in 0..<h {
//        for i in 0..<w {
//            o[j][i] = Character(check(x: i,j) ? "*" : ".")
//        }
//    }
//    let hh = snake.last!
//    o[hh.1][hh.0] = Character(dx == 1 ? ">" : dx == -1 ? "<" : dy == 1 ? "v" : "^")
//    return o
//}

// add settings
