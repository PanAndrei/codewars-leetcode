//: [Previous](@previous)

import Foundation
import Darwin

////String занимает 16 байт, Int — 8 байт, а Bool — 1 байт.
//
//struct Car {
//    let owner: Bool
//    let mark: String
//    let year: UInt8
//} // 25
//
//struct SomeCar {
//    let mark: String
//    let year: UInt8
//    let roof: Bool
//} // 18
//
//struct OtherCar {
//    let mark: String
//    let electric: Bool
//    let roof: Bool
//} // 18
//
//class CarClass {
//    var owner: Bool?
//    var mark: String?
//    var year: UInt8?
//} // 8
//
//let classCar = CarClass()
//
//print(MemoryLayout<Car>.size)
//print(MemoryLayout<SomeCar>.size)
//print(MemoryLayout<OtherCar>.size)
//
//print(MemoryLayout<Car>.size)
//print(MemoryLayout<Car>.alignment) // выравнивание
//print(MemoryLayout<Car>.stride) // шаг определяет промежуток между элементами
//
//print(MemoryLayout<CarClass>.size)
//print(MemoryLayout<CarClass>.alignment)
//print(MemoryLayout<CarClass>.stride)


// MARK: - --

//class A {
//    var a: A?
//}
//
//struct B {
//    var b: [B]?
//}
//
//struct C {
//    var c: C?
//} // error - рекурсивная ссылка на себя

//let ar1 = [1, 2, 3]
//let ar2 = [4, 5, 6]
//
//let both = ar1[1...] + ar2
//let both2: [Int] = ar1[1...] + ar2

//print(both[0]) // ошибка тк тут сабмассив
//print(both2[4])  //нет ошибки тк явно указан массив
//print(Array(both)[0] + both2[4]) // решение скастить в массив

// MARK: - --

//var a = 0
//var b = 0
//
//let closure = { [a] in
//    print(a, b)
//} // захват старого значения переменной
//
//a = 10
//b = 10
//
//closure()

//class X {
//    var value = 0
//}
//
//let a = X()
//let b = X()
//// сохраняется лет ссылка
//
//let closure = { [a] in
//    print(a.value, b.value)
//}
//
//a.value = 10
//b.value = 10
//
//closure()

//struct Xn {
//    var value = 0
//}
//
//var ax = Xn()
//var bx = Xn()
//
//let closure2 = { [ax] in
//    print(ax.value, bx.value)
//}
//
//ax.value = 10
//bx.value = 10
//
//closure2()

// в классе захват переменной отличается от структуры

// MARK: - ---


//Какой метод UIButton нужно переопределить, чтобы  можно было нажать на кнопку за ее пределами (например, если кнопка визуально очень маленькая)?
//
//button.contentEdgeInsets = UIEdgeInsets(top: 12, left: 16, bottom: 12, right: 16)
////Or if you specifically want to adjust around the image, instead use button.imageEdgeInsets

//var matrix = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]


//
//extension Array {
//
//    func diagonal<T>(order: Int) -> [T] where Element == [T] {
//
//        var order = order
//        return self.compactMap {
//            guard order >= 0, $0.count > order else {
//                order -= 1
//                return nil
//            }
//            print($0)
//            let output = $0[order]
//            print(output)
//            order -= 1
//            return output
//        }
//    }
//}
//
//matrix.diagonal(order: 0)

//var matrix = [[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12], [13, 14, 15, 16]]
//
//func getDiagonals(matrix: [[Int]]) {
//    for j in -(matrix.count - 1) ..< (matrix.count) {
//        var step = j
//        var answer = [Int]()
//        for i in 0 ..< matrix.count {
//            if step < 0 || step > matrix.count - 1 {
//                step += 1
//                continue
//            }
//            answer.append(matrix[matrix.count - 1 - i][step])
//            step += 1
//        }
//        print(answer)
//    }
//}
//
//getDiagonals(matrix: matrix)
