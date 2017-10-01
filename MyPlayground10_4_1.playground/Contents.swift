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
    let nmae: String
    let sex: Sex?
    var weight = 0.0
    var height = 0.0
    var petPhrase = "すごいね"
    init(name: String) {
        self.name
        sex = nil
    }
    
    init(name: String, sex: Sex) {
        self.name = name
        self.sex = sex
    }
    
    func seyHello(to: Human) {
        if let w = p as? HealthInfo,
           self.sex == w.sex {
            print("やあ、" + p.name + "。")
        } else {
            print("こんにちは")
        }
    }
}