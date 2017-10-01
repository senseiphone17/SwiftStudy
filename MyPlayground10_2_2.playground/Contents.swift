protocol Human {
    var name: String { get }
    var petPhrase: String { get set }
    init(name: String)
    func sayHello(to: Human)
}

enum Sex { case Male, Female }

protocol HealthInfo : Human {
    var weight: Double { get set }
    var height: Double { get set }
    var sex: Sex? { get }
}

class HealthCitizen: HealthInfo {

    var weight = 60.0
    var height = 170.0
    var sex: Sex? = Sex.Male
    
    let name: String
    var petPhrase = "なるほど"

    required init(name: String) {
        self.name = name
    }
    
    init(name: String, weight: Double, height: Double, sex: Sex?) {
        self.name = name
        self.weight = weight
        self.height = height
        self.sex = sex
    }
    
    func sayHello(to p: Human) {
        print("どうも" + p.name + "さん")
    }
}

var taro = HealthCitizen.init(name: "太郎", weight: 65.0, height: 173.5, sex: Sex.Male)

print(taro.height)

if let sex = taro.sex {
    print(sex)
}
