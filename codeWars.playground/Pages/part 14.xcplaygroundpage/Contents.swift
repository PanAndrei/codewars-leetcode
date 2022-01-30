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
