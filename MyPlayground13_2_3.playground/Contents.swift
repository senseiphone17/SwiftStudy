// 13.3 変数のキャプチャ

// List13-4 ネスト関数が変数をキャプチャする例

var globalCount = 0

func maker(_ a: Int, _ b: Int) -> () -> Int {
    var localvar = a
    
    func localfunc() -> Int {
        globalCount += 1
        localvar += b
        return localvar
    }
    
    return localfunc
}

var m1 = maker(10, 1)
print("m1() = \(m1()), globalCount = \(globalCount)")
print("m1() = \(m1()), globalCount = \(globalCount)")
globalCount = 1000

print("m1() = \(m1()), globalCount = \(globalCount)")
var m2 = maker(50, 2)

print("m2() = \(m2()), globalCount = \(globalCount)")
print("m1() = \(m1()), globalCount = \(globalCount)")
print("m2() = \(m2()), globalCount = \(globalCount)")