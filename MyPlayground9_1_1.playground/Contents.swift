class Person: CustomStringConvertible {
    let name: String
    var age: Int
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    var description: String {
        return "\(name), \(age)"
    }
    
    deinit {
        print("\(name): deinit")
    }
}

var yuta: Person! = Person(name: "裕太", age: 16)
print(yuta) // 裕太, 16
var x: Person! = yuta
x.age += 1
print(yuta) // 裕太, 17
print(yuta === x) // true
yuta = nil
x = nil // 裕太: deinit