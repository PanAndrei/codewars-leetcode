# codewars-leetcode

Over 300 tasks from CodeSignal, CodeWars and different companies challenges solved: 
- 2d matrixes
- Binary
- NSRegularExpression
- Loops
- Sorting
- Chess
- Algorithms

my codesignal page: https://app.codesignal.com/profile/andrey_p_hc6

for example: 
- algorithm to check if Sudoky task is correct:</b>

func solution(grid: [[Int]]) -> Bool {
 for i in 0 ..< grid.count {
        var horiz = [Int]()
        var vert = [Int]()
        var square = [Int]()
        
        for j in 0 ..< grid[0].count {
            horiz.append(grid[i][j])
            vert.append(grid[j][i])
            square.append(grid[i / 3 * 3 + j / 3][i % 3 * 3 + j % 3])
        }
        
        if Set(horiz).count != 9 || Set(vert).count != 9 || Set(square).count != 9 {
            return false
        }
        horiz = []
        vert = []
        square = []
    }
    
    return true
}

- algorythm to check if nonogram has been solved correctly:

func checkRow(row: [String], size: Int) -> Bool {
    var count = 0
    var row = row
    var numbers = [Int]()
    var numberCheck = [Int]()
    
    for elemenin in row {
        if let num = Int(elemenin) {
            numbers.append(num)
        }
    }
    
    for i in (row.count - 1 - size) ... (row.count - 1) {
        if row[i] == "#" {
            count += 1
        } else {
            numberCheck.append(count)
            count = 0
        }
    }
    numberCheck.append(count)

    if numbers == numberCheck.filter { $0 != 0 } {
        return true
    } else {
        return false
    }
}

func columToRow(field: [[String]], colum: Int) -> [String] {
    var answer = [String]()
    
    for i in 0 ..< field.count {
        answer.append(field[i][colum])
    }
    return answer
}

func solution(size: Int, nonogramField: [[String]]) -> Bool {

var arrToCheck = [[String]]()
    
    for i in (nonogramField.count - size) ... (nonogramField.count - 1) {
        arrToCheck.append(nonogramField[i])
    }
    
    for j in (nonogramField[0].count - size) ... (nonogramField[0].count - 1) {
        arrToCheck.append(columToRow(field: nonogramField, colum: j))
    }
    
    for element in arrToCheck {
        print(element)
    }
    
    for x in 0 ..< arrToCheck.count {
        if checkRow(row: arrToCheck[x], size: size) == false {
            return false
        }
    }
    
    return true

}
