class A : CustomStringConvertible {
    static var className : String {
        return "A"
    }
    
    static var total = 0
    
    class var level: Int {
        return 1
    }
    
    static func point() -> Int {
        return 1000
    }
    
    class func say() -> String {
        return "Ah."
    }
    
    init() {
        A.total += 1
    }
    
    var description: String {
        return "\(A.total): \(A.className), " + "Level=\(A.level), \(A.point())pt, \(A.say())"
    }
}

class B: A {

    override class var level: Int {
        return 2
    }
    
    override class func say() -> String {
        return "Boo"
    }
    
    override init() {
        super.init()
        B.total += 1
    }
    
    override var description: String {
        return "\(B.total): \(B.className), " + "Level=\(B.level), \(B.point())pt, \(B.say())"
    }
}

let a = A()
print(a)
let b = B()
print(b)
