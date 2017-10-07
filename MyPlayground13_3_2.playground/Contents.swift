// 13.3 クロージャの使い方と記法

enum XError: Error {
    case Zero
}

let qux = {
    (a: Int) throws -> Double in
    guard a != 0 else {
        throw XError.Zero
    }
    
    return Double(a) + 0.1
}

if let d = try? qux(1) {
    print(d)
}

if let d2 = try? qux(0) {
    print(d2)
}

var syr: (Int) throws -> Double = qux
syr = {
    (a: Int) -> Double in return 0.1
}
