/// if let

var year: Int? = 2020

if let y = year {
    print(y)     // 2020
} else {
    print("nil")
}

year = nil

if let y = year {
    print(y)
} else {
    print("nil") // nil
}

if let bigBro = 1990 as Int?, let littleBro = 1996 as Int? {
    print("\(littleBro - bigBro)歳差") // 6歳差
}