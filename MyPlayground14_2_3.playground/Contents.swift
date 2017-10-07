// 14.2 ジェネリック関数の定義

// List14-4
func rank<T: Comparable>(key: T, in a: [T]) -> (Int, Int) {
    var count = 1, total = 1
    for elm in a {
        if key > elm {
            count += 1
        }
        total += 1
    }
    return (count, total)
}

let words = ["red", "hot", "eye", "flame", "haze"]
print(rank(key: "hair", in: words))


func rank2<T, U>(key: T, in a: U) -> (Int, Int)
    where T: Comparable, U: Sequence, U.Iterator.Element == T {
        var count = 1, total = 1
        for elm in a {
            if key > elm {
                count += 1
            }
            total += 1
        }
        return (count, total)
}

let diving: Set<Double> = [0.571024, 1.130212, -0.275349, 3.406288]
print(rank2(key: 1.048596, in: diving))

let str = "今回が、一万五千四百九十八回目に該当する。"
print(rank2(key: "万", in: str.characters))


func f<T>(_ n: Int) -> [T?] {
    return [T?](repeating: nil, count:n)
}

// let a = f(3) // エラー

let a:[Int?] = f(3)
print(a)

let b = f(2) + ["θ"]
print(b)