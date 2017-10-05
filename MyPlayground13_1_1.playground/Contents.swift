// 13.1 クロージャの宣言

import SpriteKit

let c2 = {
    (a: Int, b: Int) -> Double in
    if b == 0 {
        return 0.0
    }
    
    return Double(a) / Double(b)
}

print(c2(10, 8))

let c3 = {
    (a: Int, b: Int) -> Double in
    b == 0 ? 0.0 : Double(a) / Double(b)
}

print(c3(10, 8))

var c1 = {
    print("Hello")
}
c1()

var pi: Double = {
    () -> Double in atan(1.0) * 4.0
}()

print(pi)

var pi2 = {
    atan(1.0) * 4.0
}()
print(pi2)

var closure3: Int = {
    print("what?")
    return Int(c2(9, 4))
}()
print(closure3)

var a = 9.0
var b = 1.5
let c = { () -> Double in
    if a > b {
        return a
    } else {
        return 0.0
    }
}

print(c())












