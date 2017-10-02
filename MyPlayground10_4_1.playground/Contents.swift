protocol Human {
    var name: String { get }
    var petPhrase: String { get set}
    init(name: String)
    func sayHello(to: Human)
}

enum Sex {
    case Male, Female
}

protocol HealthInfo: Human {
    var weight: Double { get set }
    var height: Double { get set }
    var sex: Sex? { get }
}

struct Person : HealthInfo {
    let name: String
    let sex: Sex?
    var weight = 0.0
    var height = 0.0
    var petPhrase = "すごいね"
    init(name: String) {
        self.name = name
        sex = nil
    }
    
    init(name: String, sex: Sex) {
        self.name = name
        self.sex = sex
    }
    
    func sayHello(to p: Human) {
        if let w = p as? HealthInfo,
           self.sex == w.sex {
            print("やあ、" + w.name + "。")
        } else {
            print("こんにちは")
        }
    }
}

let akane = Person(name: "akane", sex: Sex.Female)
let akiko = Person(name: "akiko", sex: Sex.Female)
let yuki  = Person(name: "yui")

akane.sayHello(to: akiko) //　やあ、akiko。
akane.sayHello(to: yuki)  //　こんにちは
