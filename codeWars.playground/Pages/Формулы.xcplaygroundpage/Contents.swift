//: [Previous](@previous)


// & - AND комбинирует два бита двух чисел
// | - OR сравнивает биты двух чисел
// ~ - NOT инвертирует все битовые числа
// << -побитовый сдвиг

//func solutioen(n: Int) -> Int {
//  return ( ((n & 0xAAAAAAAA) >> 1) | ((n & 0x55555555) << 1) )
//}
//
//Это просто совпадение, что шестнадцатеричный 0xaaaaaaaa представляет двоичный код с четными позициями, установленными как 1.
//
//Точно так же что-то столь же элегантное, как 0x55555555, представляет двоичный файл с нечетными позициями, установленными как 1?


//numberArr.enumerated().map { (i, n) in Int(pow(Double(n), Double(i + 1))) }.reduce(0, +)

//func isPrime(_ n: Int) -> Bool {
//  return (2...Int(Double(n).squareRoot())).lazy.filter({ n % $0 == 0 }).first == nil
//}

// рекурсия

//func solution(a: Int, b: Int, n: Int) -> Int {
//
//    if (n > 0){
//        return (a * b) + solution(a+1,b: b+1,n: n-1)
//    }else{
//        return 0
//    }
//
//}

//stride(from: max, through: 2, by: -1) 


//    newArr = arr.map { String($0) }
//    answer = newArr.joined(separator: "")

//var gg = "HHnnnKhuh"
//
//NSString(string: gg).uppercased
//NSString(string: gg).lowercased
//NSString(string: gg).capitalized

//let closingTag = tag.replacingOccurrences(of: "<", with: "</")

//// Decimal to binary
//let d1 = 21
//let b1 = String(d1, radix: 2)
//print(b1) // "10101"
//
//// Binary to decimal
//let b2 = "10110"
//let d2 = Int(b2, radix: 2)!
//print(d2) // 22
//
//// Decimal to hexadecimal
//let d3 = 61
//let h1 = String(d3, radix: 16)
//print(h1) // "3d"
//
//// Hexadecimal to decimal
//let h2 = "a3"
//let d4 = Int(h2, radix: 16)!
//print(d4) // 163
//
//// Binary to hexadecimal
//let b3 = "10101011"
//let h3 = String(Int(b3, radix: 2)!, radix: 16)
//print(h3) // "ab"
//
//// Hexadecimal to binary
//let h4 = "face"
//let b4 = String(Int(h4, radix: 16)!, radix: 2)
//print(b4) // "1111101011001110"
//Share
//Improve this ans
