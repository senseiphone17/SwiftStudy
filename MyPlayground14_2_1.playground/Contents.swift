// 14.2 ジェネリック関数の定義

// List14-1
func mySwap<T>(_ a: inout T, _ b: inout T) {
    let t = a; a = b; b = t;
}

var a = "Aria", b = "Jeanne"
print("a = \(a), b = \(b)")
mySwap(&a, &b)
print("a = \(a), b = \(b)")

var s = (1, 2), t = (100, 50)
print("s = \(s), t = \(t)")
mySwap(&s, &t)
print("s = \(s), t = \(t)")


// List14-2
func +<Key, Value>(lhs: [Key: Value], rhs: [Key: Value]) -> [Key: Value] {
    var dic = lhs
    for (k, v) in rhs {
        dic[k] = v
    }
    return dic
}

let p = ["レベル" : 60, "特技" : 10]
let q = ["番号" : 1]
let pq = p + q
print(t)