//: [Previous](@previous)

import Foundation

//You are watching a volleyball tournament, but you missed the beginning of the very first game of your favorite team. Now you're curious about how the coach arranged the players on the field at the start of the game.
//
//The team you favor plays in the following formation:
//
//0 3 0
//4 0 2
//0 6 0
//5 0 1
//where positive numbers represent positions occupied by players. After the team gains the serve, its members rotate one position in a clockwise direction, so the player in position 2 moves to position 1, the player in position 3 moves to position 2, and so on, with the player in position 1 moving to position 6.
//
//Here's how the players change their positions:
//
//
//
//Given the current formation of the team and the number of times k it gained the serve, find the initial position of each player in it.

//abs(4 - 3) % 6
//
//func solution(formation: [[String]], k: Int) -> [[String]] {
//    var answer = formation
//    let positions = [formation[3][2], formation[1][2], formation[0][1], formation[1][0], formation[3][0], formation[2][1]]
    
    
//    var index = positions.firstIndex(of: formation[3][2])!
//    index = (k - index) % 6
//    answer[3][2] = positions[index]
//
//    index = positions.firstIndex(of: formation[1][2])!
//    index = abs(k + index) % 6
//    answer[1][2] = positions[index]
//
//    index = positions.firstIndex(of: formation[0][1])!
//    index = abs(k + index) % 6
//    answer[0][1] = positions[index]
//
//    index = positions.firstIndex(of: formation[1][0])!
//    index = abs(k + index) % 6
//    answer[1][0] = positions[index]
//
//    index = positions.firstIndex(of: formation[3][0])!
//    index = abs(k + index) % 6
//    answer[3][0] = positions[index]
//
//    index = positions.firstIndex(of: formation[2][1])!
//    index = abs(k + index) % 6
//    answer[2][1] = positions[index]
    
    //    for i in 0 ..< answer.count {
//        for j in 0 ..< answer.count {
//            if answer[i][j] == "empty" {
//                continue
//            } else {
//                print(answer[i][j])
//                var index = positions.firstIndex(of: answer[i][j])!
//                print(index)
//                index = abs(k - index) % 6
//                print(index)
//                answer[i][j] = positions[index]
//                print(answer[i][j])
//            }
//        }
//    }
//
//    for element in answer {
//        print(element)
//    }
//
//    return answer
//}
//
//solution(formation: [["empty",   "Player5", "empty"],
//                     ["Player4", "empty",   "Player2"],
//                     ["empty",   "Player3", "empty"],
//                     ["Player6", "empty",   "Player1"]], k: 2)


//func solution(formation: [[String]], k: Int) -> [[String]] {
//    if k % 6 == 0 { return formation }
//    var n = k % 6
//    var r = formation
//    while n >= 6 {
//        n = n % 6
//    }
//    // flip n times
//    for _ in 1...n {
//        let tmp = r
//        r[0][1] = tmp[1][2]
//        r[1][0] = tmp[0][1]
//        r[1][2] = tmp[3][2]
//        r[3][0] = tmp[1][0]
//        r[2][1] = tmp[3][0]
//        r[3][2] = tmp[2][1]
//    }
//    return r
//}

//Consider a (2k+1) × (2k+1) square subarray of an integer integers matrix. Let's call the union of the square's two longest diagonals, middle column and middle row a star. Given the coordinates of the star's center in the matrix and its width, rotate it 45 · t degrees clockwise preserving position of all matrix elements that do not belong to the star.

//func solution(matrix: [[Int]], width: Int, center: [Int], t: Int) -> [[Int]] {
//    var t = t % 8
//    if t == 0 { return matrix }
//    var matrix = matrix
//    let radius = width / 2
//    let rowCenter = center[0]
//    let colCenter = center[1]
//
//    // flip t times
//    for _ in 1...t {
//        for i in 0..<radius {
//            let temp = matrix[rowCenter-radius+i][colCenter-radius+i]
//            matrix[rowCenter-radius+i][colCenter-radius+i] = matrix[rowCenter][colCenter-radius+i]
//            matrix[rowCenter][colCenter-radius+i] = matrix[rowCenter+radius-i][colCenter-radius+i]
//            matrix[rowCenter+radius-i][colCenter-radius+i] = matrix[rowCenter+radius-i][colCenter]
//            matrix[rowCenter+radius-i][colCenter] = matrix[rowCenter+radius-i][colCenter+radius-i]
//            matrix[rowCenter+radius-i][colCenter+radius-i] = matrix[rowCenter][colCenter+radius-i]
//            matrix[rowCenter][colCenter+radius-i] = matrix[rowCenter-radius+i][colCenter+radius-i]
//            matrix[rowCenter-radius+i][colCenter+radius-i] = matrix[rowCenter-radius+i][colCenter]
//            matrix[rowCenter-radius+i][colCenter] = temp
//        }
//    }
//
//    return matrix
//}

//Sudoku is a number-placement puzzle. The objective is to fill a 9 × 9 grid with digits so that each column, each row, and each of the nine 3 × 3 sub-grids that compose the grid contains all of the digits from 1 to 9.
//
//This algorithm should check if the given grid of numbers represents a correct solution to Sudoku.


//func solution(grid: [[Int]]) -> Bool {
//
//    for i in 0 ..< grid.count {
//        var horiz = [Int]()
//        var vert = [Int]()
//        var square = [Int]()
//        
//        for j in 0 ..< grid[0].count {
//            horiz.append(grid[i][j])
//            vert.append(grid[j][i])
//            square.append(grid[i / 3 * 3 + j / 3][i % 3 * 3 + j % 3])
//        }
//        
//        if Set(horiz).count != 9 || Set(vert).count != 9 || Set(square).count != 9 {
//            return false
//        }
//        horiz = []
//        vert = []
//        square = []
//    }
//    
//    return true
//}

//In the popular Minesweeper game you have a board with some mines and those cells that don't contain a mine have a number in it that indicates the total number of mines in the neighboring cells. Starting off with some arrangement of mines we want to create a Minesweeper game setup.

//func solution(matrix: [[Bool]]) -> [[Int]] {
//    var answer = Array(repeating: Array(repeating: 0, count: matrix[0].count), count: matrix.count)
//
//    for i in 0 ..< matrix.count {
//        for j in 0 ..< matrix[0].count {
//            if matrix[i][j] {
//                for x in -1 ... 1 {
//                    var xCoor = i + x
//                    if xCoor < 0 || xCoor > matrix.count - 1 {
//                        continue
//                    }
//                    for y in -1 ... 1 {
//                       var yCoor = j + y
//                        if yCoor < 0 || yCoor > matrix[0].count - 1 {
//                            continue
//                        }
//                        answer[xCoor][yCoor] += 1
//                    }
//                }
//                answer[i][j] -= 1
//            }
//        }
//    }
//
//    return answer
//}
//
//solution(matrix: [[true, false, false],
//                  [false, true, false],
//                  [false, false, false]])


//Last night you partied a little too hard. Now there's a black and white photo of you that's about to go viral! You can't let this ruin your reputation, so you want to apply the box blur algorithm to the photo to hide its content.
//
//The pixels in the input image are represented as integers. The algorithm distorts the input image in the following way: Every pixel x in the output image has a value equal to the average value of the pixel values from the 3 × 3 square that has its center at x, including x itself. All the pixels on the border of x are then removed.
//
//Return the blurred image as an integer, with the fractions rounded down

//func solution(image: [[Int]]) -> [[Int]] {
//    var answer = Array(repeating: Array(repeating: 0, count: image[0].count - 2), count: image.count - 2)
//        
//    for i in 1 ... (image.count - 2) {
//        for j in 1 ... (image[0].count - 2) {
//            var number = 0
//            number += image[i - 1][j - 1]
//            number += image[i - 1][j]
//            number += image[i - 1][j + 1]
//            number += image[i][j - 1]
//            number += image[i][j]
//            number += image[i][j + 1]
//            number += image[i + 1][j - 1]
//            number += image[i + 1][j]
//            number += image[i + 1][j + 1]
//            number = Int(number / 9)
//            answer[i - 1][j - 1] = number
//        }
//    }
//    
//    return answer
//}
//
//solution(image: [[7, 4, 0, 1],
//                 [5, 6, 2, 2],
//                 [6, 10, 7, 8],
//                 [1, 4, 2, 0]])

//Mark got a rectangular array matrix for his birthday, and now he's thinking about all the fun things he can do with it. He likes shifting a lot, so he decides to shift all of its i-contours in a clockwise direction if i is even, and counterclockwise if i is odd.
//
//Here is how Mark defines i-contours:
//
//the 0-contour of a rectangular array as the union of left and right columns as well as top and bottom rows;
//consider the initial matrix without the 0-contour: its 0-contour is the 1-contour of the initial matrix;
//define 2-contour, 3-contour, etc. in the same manner by removing 0-contours from the obtained arrays.
//Implement a function that does exactly what Mark wants to do to his matrix.
//
//
//
//func solution(matrix: [[Int]]) -> [[Int]] {
//    func contourToMatrixCoord(depth: Int, i: Int) -> (Int, Int) {
//        let h = matrix.count - 2*depth
//        let w = matrix[0].count - 2*depth
//        if h == 1 {
//            return (depth, depth+i)
//
//        } else if w == 1 {
//            return (depth+i, depth)
//        } else {
//            switch i {
//            case let p where 0 <= p && p < w:
//                return (depth, depth+p)
//            case let p where w <= p && p < w+h-1:
//                return (depth+p-w+1, depth+w-1)
//            case let p where w+h-1 <= p && p < 2*(w-1)+h:
//                return (depth+h-1, depth+2*(w-1)+h-1-p)
//            case let p where 2*(w-1)+h <= p && p < 2*(h+w-2):
//                return (depth+2*(w+h-2)-p, depth)
//            default:
//                fatalError()
//            }
//        }
//    }
//
//    var retMat = matrix
//    var n = matrix.count // k-contour height
//    var m = matrix[0].count // k-contour width
//    var k = 0 // contour depth
//    while n > 0 && m > 0 {
//        let count = (n == 1 || m == 1) ? n*m : 2*(n+m-2)
//        if k%2 == 0 {
//            var (p, q) = contourToMatrixCoord(depth: k, i: count-1)
//            for i in 0..<count {
//                let (r, s) = contourToMatrixCoord(depth: k, i: i)
//                retMat[r][s] = matrix[p][q]
//                (p, q) = (r, s)
//            }
//        } else {
//            var (p, q) = contourToMatrixCoord(depth: k, i: 0)
//            for i in 0..<count {
//                let (r, s) = contourToMatrixCoord(depth: k, i: count-1-i)
//                retMat[r][s] = matrix[p][q]
//                (p, q) = (r, s)
//            }
//        }
//        n -= 2
//        m -= 2
//        k += 1
//    }
//    return retMat
//}

//You have a rectangular white board with some black cells. The black cells create a connected black figure, i.e. it is possible to get from any black cell to any other one through connected adjacent (sharing a common side) black cells.
//
//Find the perimeter of the black figure assuming that a single cell has unit length.
//
//It's guaranteed that there is at least one black cell on the table.

// работает только если фигура - змейка

//func solution(matrix: [[Bool]]) -> Int {
//    var answer = matrix.flatMap { $0 }.filter { $0 == true}.count
//
//    switch answer {
//    case 1:
//        return 4
//    case 2:
//        return 6
//    default:
//        return 6 + (answer - 2) * 2
//    }
//
//}

//// perfect
//func solution(matrix: [[Bool]]) -> Int {
//    var answer = matrix.flatMap { $0 }.filter { $0 == true }.count * 4
//    var newMatr = matrix.map { [false] + $0 + [false] }
//    newMatr.insert(Array(repeating: false, count: newMatr[0].count), at: 0)
//    newMatr.append(Array(repeating: false, count: newMatr[0].count))
//
//    for i in 1 ..< newMatr.count - 1 {
//        for j in 1 ..< newMatr[0].count - 1 {
//            if newMatr[i][j] {
//                var count = 0
//                if newMatr[i - 1][j] {
//                    count += 1
//                }
//                if newMatr[i + 1][j] {
//                    count += 1
//                }
//                if newMatr[i][j - 1] {
//                    count += 1
//                }
//                if newMatr[i][j + 1] {
//                    count += 1
//                }
//                answer -= count
//            }
//        }
//    }
//
//    return answer
//}
//
//solution(matrix: [[false, true,  true ],
//                  [true,  true,  false],
//                  [true,  false, false]])


//You are given a vertical box divided into equal columns. Someone dropped several stones from its top through the columns. Stones are falling straight down at a constant speed (equal for all stones) while possible (i.e. while they haven't reached the ground or they are not blocked by another motionless stone). Given the state of the box at some moment in time, find out which columns become motionless first.

// пришла идея как проще решить
//нужно смотреть с последней строки - есть ли камень. если да то проверять колонку на наличие других
//камней или проблелов

//let rows = ["#..##",
//            ".##.#",
//            ".#.##",
//            "....."]
//
//func checkRow (row: String) -> Bool {
//    var multa = 0
//    let row = row.map { String($0) }
//    if row.last == "#" {
//        for i in 0 ..< row.count {
//            if row[row.count - 1 - i] != "#" {
//                multa += 1
//            }
//            if multa >= 1 && row[row.count - 1 - i] == "#" {
//                return false
//            }
//        }
//    } else if row.filter { $0 == "#"}.count == 0  {
//        return true
//    } else {
//        return false
//    }
//    return true
//}
//
//func moveRow (row: String) -> String {
//    var answer = row.map { String($0) }
//
//    for i in 0 ..< answer.count {
//        if answer[answer.count - 1 - i] != "#" {
//            answer.remove(at: answer.count - 1 - i)
//            answer.insert(".", at: 0)
//            break
//        }
//    }
//    return answer.joined()
//}
//
//func solution(rows: [String]) -> [Int] {
//    let newrows = rows.map { $0.map { String($0) } }
//    var answer = [Int]()
//    var colums = [String]()
//
//    for i in 0 ..< newrows[0].count {
//        var element = ""
//        for j in 0 ..< newrows.count {
//            element += newrows[j][i]
//        }
//        colums.append(element)
//    }
//
//big: for _ in 1 ... colums[0].count {
//
//        for i in 0 ..< colums.count {
//            if checkRow(row: colums[i]) {
//                answer.append(i)
//            }
//        }
//
//        if answer.isEmpty {
//            for i in 0 ..< colums.count {
//                colums[i] = moveRow(row: colums[i])
//            }
//        } else {
//            break big
//        }
//
//    }
//
//    return answer
//}
//
//solution(rows: rows)
//
//var str = "#.....#"
//
//checkRow(row: str)
//let new = moveRow(row: str)
//checkRow(row: new)
//let nn = moveRow(row: new)
//checkRow(row: nn)
//
//// как это работает вообще хз
//
//func solution(rows: [String]) -> [Int] {
//    var holes = Array(repeating: 0, count: rows[0].characters.count)
//    var rocks = Array(repeating: false, count: rows[0].characters.count)
//    for row in rows {
//        for (i, c) in row.characters.enumerated() {
//            if c == "." && rocks[i] {
//                holes[i] += 1
//            }
//            if !rocks[i] && c == "#" {
//                rocks[i] = true
//            }
//        }
//    }
//    return holes.enumerated().filter({$0.1 == holes.min(by: <)!}).map({$0.0})
//}

//Court is in session. We got a group of witnesses who have all taken an oath to tell the truth. The prosecutor is pointing at the defendants one by one and asking each witnesses a simple question - "guilty or not?". The witnesses are allowed to respond in one of the following three ways:
//
//I am sure he/she is guilty.
//I am sure he/she is innocent.
//I have no idea.
//The prosecutor has a hunch that one of the witnesses might not be telling the truth so she decides to cross-check all of their testimonies and see if the information gathered is consistent, i.e. there are no two witnesses A and B and a defendant C such that A says C is guilty while B says C is innocent.

//func solution(evidences: [[Int]]) -> Bool {
//    for j in 0..<evidences[0].count {
//        var values:[Int] = []
//        for i in 0..<evidences.count {
//            values.append(evidences[i][j])
//        }
//        if (values.contains(-1) && values.contains(1)) {
//            return false
//        }
//    }
//    return true
//}

//A nonogram is also known as Paint by Numbers and Japanese Crossword. The aim in this puzzle is to color the grid into black and white squares. At the top of each column, and at the side of each row, there are sets of one or more numbers which describe the runs of black squares in that row/column in exact order. For example, if you see 10 1 along some column/row, this indicates that there will be a run of exactly ten black squares, followed by one or more white squares, followed by a single black square. The cells along the edges of the grid can also be white.
//
//You are given a square nonogram of size size. Its grid is given as a square matrix nonogramField of size (size + 1) / 2 + size, where the first (size + 1) / 2 cells of each row and and each column define the numbers for the corresponding row/column, and the rest size × size cells define the the grid itself.
//
//Determine if the given nonogram has been solved correctly.
//
//Note: here / means integer division.

//var size = 5
//var nonogramField = [["-", "-", "-", "-", "-", "-", "-", "-"],
//                     ["-", "-", "-", "2", "2", "1", "-", "1"],
//                     ["-", "-", "-", "2", "1", "1", "3", "3"],
//                     ["-", "3", "1", "#", "#", "#", ".", "#"],
//                     ["-", "-", "2", "#", "#", ".", ".", "."],
//                     ["-", "-", "2", ".", ".", ".", "#", "#"],
//                     ["-", "1", "2", "#", ".", ".", "#", "#"],
//                     ["-", "-", "5", "#", "#", "#", "#", "#"]]
//
//var row = ["-", "1", "2", "#", ".", ".", "#", "#"]
//
//func checkRow(row: [String], size: Int) -> Bool {
//    var count = 0
//    var row = row
//    var numbers = [Int]()
//    var numberCheck = [Int]()
//
//    for elemenin in row {
//        if let num = Int(elemenin) {
//            numbers.append(num)
//        }
//    }
//
//    for i in (row.count - 1 - size) ... (row.count - 1) {
//        if row[i] == "#" {
//            count += 1
//        } else {
//            numberCheck.append(count)
//            count = 0
//        }
//    }
//    numberCheck.append(count)
//
//    if numbers == numberCheck.filter { $0 != 0 } {
//        return true
//    } else {
//        return false
//    }
//}
//
//func columToRow(field: [[String]], colum: Int) -> [String] {
//    var answer = [String]()
//
//    for i in 0 ..< field.count {
//        answer.append(field[i][colum])
//    }
//    return answer
//}

//checkRow(row: row, size: 5)
//columToRow(field: nonogramField , colum: 4)

// works perfect
//func solution(size: Int, nonogramField: [[String]]) -> Bool {
//    var arrToCheck = [[String]]()
//
//    for i in (nonogramField.count - size) ... (nonogramField.count - 1) {
//        arrToCheck.append(nonogramField[i])
//    }
//
//    for j in (nonogramField[0].count - size) ... (nonogramField[0].count - 1) {
//        arrToCheck.append(columToRow(field: nonogramField, colum: j))
//    }
//
//    for element in arrToCheck {
//        print(element)
//    }
//
//    for x in 0 ..< arrToCheck.count {
//        if checkRow(row: arrToCheck[x], size: size) == false {
//            return false
//        }
//    }
//
//    return true
//}
//
//solution(size: 5, nonogramField: nonogramField)
