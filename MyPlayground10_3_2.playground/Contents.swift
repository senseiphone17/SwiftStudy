protocol NameList {
    associatedtype List: Collection = [String]
    func printAll()
}

struct MemberList: NameList {
    var list: MemberList.List
    func printAll() {
        print(list)
    }
}

struct GradeList: NameList {
    var list: [String: Int]
    func printAll() {
        print(list)
    }
}

let m = MemberList(list: ["鶴丸", "光忠", "倶利伽羅", "太鼓鐘"])
let g = GradeList(list: ["三日月": 3, "小狐丸": 5, "石切丸": 7, "岩融": 9])

m.printAll()
g.printAll()


protocol Heart {
    associatedtype Beat
    var sound: Beat { get }
}

protocol Hybrid: Heart {
    associatedtype Cycle: Integer
    typealias Text = String
    func pr(_: Beat) -> Text
}

struct Gear: Hybrid {
    typealias Cycle = Int
    let sound: UInt
    var noise: Cycle
    func pr(_ a: Gear.Beat) -> Gear.Text {
        return "\(sound+a)-\(noise)"
    }
}

let gear = Gear(sound: 100, noise: 50)
print(gear.pr(gear.sound))


protocol VectorIntegerArithmetic {
    associatedtype Element: Integer
    var x: Element { get set }
    var y: Element { get set }
    static func +(lhs: Self, rhs: Self) -> Self
}

struct VectorUInt8: VectorIntegerArithmetic, CustomStringConvertible {
    var x, y: UInt8
    var description: String {
        return "[\(x), \(y)]"
    }
    
    static func +(lhs: VectorUInt8, rhs: VectorUInt8) -> VectorUInt8 {
        return VectorUInt8(x: lhs.x &+ rhs.x, y: lhs.x &+ lhs.y)
    }
}

var va = VectorUInt8(x: 100, y: 200)
print(va)
let vb = VectorUInt8(x: 156, y: 100)
print(va + vb)








