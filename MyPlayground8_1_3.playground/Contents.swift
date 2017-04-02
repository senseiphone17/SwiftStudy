class A {
    class func show() {
        print("A")
    }
    
    class func who() {
        show()
    }

    func myclass() {
        type(of:self).who()
    }
}

class B: A {
    override class func show() {
        print("B")
    }
}

var a = A()
var b = B()

//a.who() // A
//b.who() // B

a.myclass() // A
b.myclass() // B