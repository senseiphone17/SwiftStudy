// 13.3 クロージャの使い方と記法

enum XError: Error {
    case Byte
}

func apply(to arg: inout [Int], _ map: (Int) throws -> Int) rethrows {
    for i in 0 ..< arg.count {
        arg[i] = try map(arg[i])
    }
}

var list = [1, 2, 3, 4, 5]

let bell = {
    (a: Int) throws -> Int in
    
    let q = a * a
    
    guard q < 256 else {
        throw XError.Byte
    }
    
    return q
}

if let _ = try? apply(to: &list, bell) {
    print( list )
}

let aiz = {
    (a: Int) -> Int in
    return (a * a) & 0xff
}
apply(to: &list, aiz)
print(list)


let dat = [2, 80, 45, 13]
let str = dat.map {
    "\($0)"
}
print(str)

let str2 = dat.filter{ $0 >= 10 }.sorted(by: < ).map{ "\($0)" }
print(str2)

let numbers = [Int](1...10)
let sum = numbers.reduce(0, +)
print(sum)