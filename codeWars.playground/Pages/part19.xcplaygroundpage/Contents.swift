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
