// 13.3 変数のキャプチャ

// List13-1

var globalCount = 0

// () -> Int という型を持つクロージャのインスタンスを作って返す関数
func maker(_ a: Int, _ b: Int) -> () -> Int {
    var localvar = a
    
    return  {
        () -> Int  in
        globalCount += 1
        localvar += b
        return localvar
    }
}

var m1 = maker(10, 1)
print("m1() = \(m1()), globalCount = \(globalCount)")
print("m1() = \(m1()), globalCount = \(globalCount)")
globalCount = 1000
print("m1() = \(m1()), globalCount = \(globalCount)")

print("")
var m2 = maker(50, 2)
print("m2() = \(m2()), globalCount = \(globalCount)")
print("m1() = \(m1()), globalCount = \(globalCount)")
print("m2() = \(m2()), globalCount = \(globalCount)")
print("m1() = \(m1()), globalCount = \(globalCount)")