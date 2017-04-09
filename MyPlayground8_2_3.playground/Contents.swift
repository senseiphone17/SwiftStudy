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