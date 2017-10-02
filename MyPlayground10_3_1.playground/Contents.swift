protocol SimpleVector {
    associatedtype Element
    var x: Element { get set }
    var y: Element { get set }
}

struct VectorFloat: SimpleVector {
    typealias Element = Float
    var x, y: Float
}

struct VectorDouble: SimpleVector, CustomStringConvertible {
    var x, y: Double
    
    var description: String { return "[\(x), \(y)]"}

    init(x: VectorDouble.Element, y: VectorDouble.Element) {
        self.x = x
        self.y = y
    }
    
    init(vectorFloat d: VectorFloat) {
        self.init(x: Double(d.x), y: Double(d.y))
    }
}

struct VectorGrade: SimpleVector, CustomStringConvertible {
    enum Element: String { case A, B, C, D, X }
    var x, y: Element
    var description: String { return "[\(x), \(y)]"}
}

var a = VectorFloat(x: 10.0, y: 12.0)
let b = VectorDouble(vectorFloat: a)
print(a)
print(b)

var g = VectorGrade(x: .A, y: .X)
print(g)


protocol VectorInteger {
    associatedtype Element: Integer
    
    var x: Element { get set }
    var y: Element { get set }
}

struct VectorInt: VectorInteger, CustomStringConvertible {
    var x, y: Int
    var description: String { return "[\(x), \(y)]" }
        
    static func +(lhs: VectorInt, rhs: VectorInt) -> VectorInt {
        return VectorInt(x: lhs.x + rhs.x, y: lhs.y + rhs.y)
    }
}

let mx: VectorInt.Element = 10
print(mx)

var c = VectorInt(x: mx, y: -7)
var d = VectorInt(x: -2, y: 8)

print(c + d)
