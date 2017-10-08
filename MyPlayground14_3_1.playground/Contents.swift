// 14.3 ジェネリクスによる型定義

// List14-7

protocol SimpleVector {
    associatedtype Element
    var x: Element { get set }
    var y: Element { get set }
}

struct Vector<T> : SimpleVector {
    typealias Element = T
    var x, y: Element
}

let a: Vector<Int> = Vector<Int>(x: 12, y: 3)
print(a.x, a.y)

let b = Vector<[String]>(x: [], y: ["黒", "noir", "schwarz"])
print(b)

let p = Vector(x: 10.0, y: 2.0 / 2.5).y
print(p)