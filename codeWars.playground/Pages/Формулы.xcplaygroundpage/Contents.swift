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
