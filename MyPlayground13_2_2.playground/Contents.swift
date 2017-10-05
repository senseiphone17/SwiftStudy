// 13.3 変数のキャプチャ

// List13-3 変数のキャプチャを調べる例

class MyInt {
    var value = 0
    
    init(_ v: Int) {
        value = v
    }
    
    deinit {
        print("deinit: \(value)")
    }
}

func makerZ(_ a: MyInt, _ s: String) -> () -> () {
    let localvar = a
    
    return {
        localvar.value += 1
        print("\(s): \(localvar.value)")
    }
}

var obj: MyInt! = MyInt(10)

var m1: (()->())! = makerZ(obj, "m1")
m1()

var m2: (()->())! = makerZ(obj, "m2")
obj = nil

m2()
m1()
m1 = nil

m2()
m2 = nil