/// mutating and nonmutating

struct ValueAndCounter {
    private let privateValue: Double
    
    var count = 0
    
    init(_ value: Double) {
        privateValue = value
    }
    
    var value: Double {
        mutating get {
            count += 1
            return privateValue
        }
    }
}

struct ValueInArray {
    private static var privatePool: [Double] = []
    
    let index: Int
    
    init(_ value: Double) {
        index = ValueInArray.privatePool.count
        ValueInArray.privatePool.append(value)
    }
    
    var value: Double {
        get {
            return ValueInArray.privatePool[index]
        }
        
        nonmutating set {
            ValueInArray.privatePool[index] = newValue
        }
    }
    
    static func clear() {
        for i in 0..<privatePool.count {
            privatePool[i] = 0.0
        }
    }
}

var counterA = ValueAndCounter(0.283)
print(counterA.count) // 0
for _ in 0..<10 {
    print(counterA.value)
}
print(counterA.count) // 10
print("")

let arrayA = ValueInArray(284.21)
print(arrayA.value) // 284.21
arrayA.value = 372.19
print(arrayA.value) // 372.19
ValueInArray.clear()
print(arrayA.value) // 0.0