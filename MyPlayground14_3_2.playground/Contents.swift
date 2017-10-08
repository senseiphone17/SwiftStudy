// 14.3 ジェネリクスによる型定義

// List14-9 拡張定義の制約に型パラメータを使う例

struct PickForever<T> {
    var list: [T]
    var index = 0
    
    init(_ a: [T]) {
        list = a
    }
    
    mutating func pick() -> T {
        if index >= list.count {
            index = 0
        }
        
        let rtn = list[index]
        
        index += 1
        
        return rtn
    }
}

extension PickForever where T: Comparable {
    mutating func sort() {
        list.sort()
    }
}

extension PickForever where T: Hashable {
    mutating func makeUniquie() {
        let tmp = Set<T>(list)
        list = [T](tmp)
    }
}

let t = [(4, "多摩"), (2, "那珂"), (1, "神通")]
var a = PickForever<(Int, String)>(t)
for _ in 0 ..< 5 {
    print(a.pick().1, terminator: " ")
}
print("")


let msg = "おあやややおやにおあやまりとおいい"
var b = PickForever([Character](msg.characters))
b.makeUniquie()
b.sort()

for _ in 0 ..< 10 {
    print(b.pick(), terminator: " ")
}
print("")