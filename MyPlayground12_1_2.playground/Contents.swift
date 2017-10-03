// 12.1 エラー処理構文

// List12-3
enum FooError: Error {
    case ooal
}

func convInt(_ s: String) throws -> Int? {
    if s == "" {
        throw FooError.ooal
    }
    
    return Int(s)
}

for s in [ "41", "gown", "" ] {

    if let x = try? convInt(s) {
        print("x: ", x)
    } else {
        print("Failure")
    }

}

for s in [ "41", "gown", "" ] {
    if case let x?? = try? convInt(s) {
        print("x:", x)
    } else {
        print("Failure")
    }
}

for s in [ "41", "gown", "" ] {
    switch try? convInt(s) {
    case let x??:
        print("x??: x=\(x)")
    case nil?:
        print("nil?")
    case nil:
        print("nil")
    }
}