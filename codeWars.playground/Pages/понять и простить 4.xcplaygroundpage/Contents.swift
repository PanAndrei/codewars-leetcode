//: [Previous](@previous)

//You're a crossword fanatic, and have finally decided to try and create your own. However, you also love symmetry and good design, so you come up with a set of rules they should follow:
//
//the crossword must contain exactly four words;
//these four words should form four pairwise intersections;
//all words must be written either left-to-right or top-to-bottom;
//the area of the rectangle formed by empty cells inside the intersections isn't equal to zero.
//Given 4 words, find the number of ways to make a crossword following the above-described rules. Note that two crosswords which differ by rotation are considered different.
//

// не дорешал
//func solution(words: [String]) -> Int {
//    var count = 0
//    var newArr = [[String]]()
//
//    for word in words {
//        let newWord = word.map { String($0) }
//        newArr.append(newWord)
//    }
//
//    for _ in 1 ... 4 {
//        let first = newArr[0]
//        let second = newArr[1]
//        let third = newArr[2]
//        let foth = newArr[3]
//
//        for i in 0 ..< first.count {
//            var contact1 = 0
//            for j in 0 ..< second.count {
//                if first[i] == second[j] {
//                    contact1 = i
//                    if i < third.count {
//                    for n in 0 ..< third.count {
//                        if i > contact1 &&
//                    }
//                    } else {
//                        continue
//                    }
//            }
//        }
//
//    }
//
//    return count
//}
//
//// пересечение
//
//func checkHor(word1: String, word2: String) -> [Int] {
//    let word1 = word1.map { String($0) }
//    let word2 = word2.map { String($0) }
//    var cross = [Int]()
//    for i in 0 ..< word1.count {
//        for j in 0 ..< word2.count {
//            if word1[i] == word2[j] {
//                cross.append(i)
//            }
//        }
//    }
//    print(cross)
//    return cross
//}
//
//
//var words = ["crossword", "square", "formation", "something"]
//
//solution(words: words)
//checkHor(word1: words[0], word2: words[2])
//checkHor(word1: words[3], word2: words[2])
//checkHor(word1: words[0], word2: words[1])
//checkHor(word1: words[3], word2: words[1])


//// чужое
//    func solution(words: [String]) -> Int {
//        var count = 0
//        for i in 0..<4 {
//            let a = words[i].characters.map({String($0)})
//            for a1 in 0..<(a.count - 1) {
//                for j in 0..<4 {
//                    if j == i {
//                        continue
//                    }
//                    let b = words[j].characters.map({String($0)})
//                    for b2 in 1..<b.count {
//                        if b[b2] != a[a1] {
//                            continue
//                        }
//                        for b1 in 0..<(b2 - 1) {
//                            for k in 0..<4 {
//                                if k == i || k == j {
//                                    continue
//                                }
//                                let c = words[k].characters.map({String($0)})
//                                let d = words[6 - i - j - k].characters.map({String($0)})
//                                if b2 - b1 >= d.count {
//                                    continue
//                                }
//                                for c1 in 0..<(c.count - 1) {
//                                    if c[c1] != b[b1] {
//                                        continue
//                                    }
//                                    for c2 in (c1 + 2)..<c.count {
//                                        let a2 = a1 + (c2 - c1)
//                                        if a2 >= a.count {
//                                            continue
//                                        }
//                                        for d1 in 0..<d.count {
//                                            if d[d1] != c[c2] {
//                                                continue
//                                            }
//                                            let d2 = d1 + (b2 - b1)
//                                            if d2 >= d.count {
//                                                break
//                                            }
//                                            if a[a2] != d[d2] {
//                                                continue
//                                            }
//                                            count += 1
//                                        }
//                                    }
//                                }
//                            }
//                        }
//                    }
//                }
//            }
//        }
//        return count
//    }
