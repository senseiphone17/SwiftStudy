// 13.1 クロージャの宣言

let c1 = {
    (a: Int, b: Int) -> Double in
    return Double(a) / Double(b)
}

var c2: (Int, Int) -> Double = c1
c2(10, 4)
print(c2)

func f1(a: Int, b: Int) -> Double {
    return Double(a) / Double(b)
}
print(f1)
c2 = f1