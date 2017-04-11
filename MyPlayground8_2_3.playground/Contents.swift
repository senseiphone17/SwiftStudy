class NamePlate {
    let name, title: String
    
    init() {
        name = "guest"
        title = ""
    }
    
    init?(name: String, title: String) {
        if name == "" {
            return nil
        }
        
        self.name = name
        self.title = title
    }
}

var plateA = NamePlate.init()
print(plateA.name) // guest

var plateB = NamePlate.init(name: "Takeshi", title: "Welcome")
print(plateB?.name) // Takeshi
print(plateB?.title) // Welcome

class SpeakerNamePlate: NamePlate {
    override init?(name: String, title: String) {
        if title == "" {
            return nil
        }
        
        super.init(name: name, title: title)
    }
    
    convenience init?(name: String) {
        if name == "" {
            return nil
        }
        self.init(name: name, title: "Speaker")
    }
}

let plateC = NamePlate(name: "Thomas", title: "hero")!
print(plateC.name) // Thomas
print(plateC.title) // hero

let plateD = NamePlate(name: "", title: "")
print(plateD) // nil
print(plateD?.name) // nil
