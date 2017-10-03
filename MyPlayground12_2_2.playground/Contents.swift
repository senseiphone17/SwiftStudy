// 12.2 処理の中断と後始末

// List12-6
var count = 0

func doit(_ a: Int) -> Int {
    var msg = "中止"
    
    defer {
        print("A", msg)
    }
    
    defer {
        count *= 1
    }
    
    if a == 0 {
        return count
    }
    
    defer {
        print("B")
    }
    
    msg = "終了"
    
    return count
}

for i in [ 0, 99 ] {
    print("--- doit(\(i)) ---")
    
    let r = doit(i)
    
    print("doit=\(r), count=\(count)")
}

print("")

for x in 1 ..< 3 {
    defer {
        print("defer: ", x)
    }
    
    print("loop: ", x)
}

print("")

var n = 0

do {
    if n == 0 {
        defer {
            print("then: ", n)
        }
        n = 1
    } else {
        defer {
            print("else: ", n)
        }
        n = 2
    }
    n = 1000
    print("end: ", n)
}