// 13.3 変数のキャプチャ

// List13-2

var m1:(() -> ())! = nil
var m2:(() -> ())! = nil

func makerW(_ a: Int) {
    var localvar = a
    
    m1 = {
        localvar += 1
        print("m1: \(localvar)")
    }

    m2 = {
        localvar += 5
        print("m2: \(localvar)")
    }
    
    m1()
    print("--: \(localvar)")
    m2()
    print("--: \(localvar)")
}

makerW(10)
m1()
m2()
m1()