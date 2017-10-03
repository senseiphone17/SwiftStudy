// 11.3 プロトコル拡張

// List11-10
protocol SimpleVector {
    associatedtype Element
    var x: Element { get set }
    var y: Element { get set }
}

extension SimpleVector where Element: FloatingPoint { // 要素が実数だったら
    func abs() -> Element {
        return (x * x + y * y).squareRoot()
    }
    
    func toString() -> String { return "\(x), \(y)" }
}

//extension SimpleVector where Element: String { // 要素が文字列だったら
//    func toString() -> String { return x + y }
//}

struct VectorFloat: SimpleVector {
    var x, y: Float
}

struct Kifu: SimpleVector {
    var x, y: String
}

let f = VectorFloat(x: 4.0, y: 7.0)
print(f.toString())
print(f.abs())

//let p = Kifu(x: "４", y: "六")
//print(p.toString())
