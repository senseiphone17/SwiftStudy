// 13.3 変数のキャプチャ

// List13-6

var a, b, c: () -> ()

do {
    var count = 0
    var name = "PASCAL"
    
    a = {
        print("A: \(count), \(name)")
    }

    b = {
        [count] in print("B: \(count), \(name)")
    }
    
    c = {
        [name, count] in print("C: \(count), \(name)")
    }
    
    count = 1
    
    name = "Swift"
}

a()
b()
c()