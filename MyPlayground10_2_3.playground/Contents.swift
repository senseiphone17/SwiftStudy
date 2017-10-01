import Foundation

@objc protocol PersonalData {
    var name: String { get }
    @objc optional var bloodtype: String { get }
    @objc optional func age() -> Int
}

class Person: PersonalData {
    let name: String
    let bloodtype: String
    init(name: String, bloodtype: String) {
        self.name = name
        self.bloodtype = bloodtype
    }
}

var p1: PersonalData = Person.init(name: "太郎", bloodtype: "A")

if let btype = p1.bloodtype {
    print(btype)
}

class Person2: PersonalData {
    let name: String
    init(name: String) {
        self.name = name
    }
}

var p2: PersonalData = Person2.init(name: "次郎")

if let btype2 = p2.bloodtype {
    print(btype2)
} else {
    print("不明")
}
