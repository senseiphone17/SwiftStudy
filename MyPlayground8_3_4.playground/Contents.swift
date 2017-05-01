class Avator {
    class func say() {
        print("Avatar")
    }
    
    required init() {
        
    }
}

class Player: Avator {
    override class func say() {
        print("Player")
    }
    
    let name: String
    init(name: String) {
        self.name = name
        super.init()
    }
    
    required convenience init() {
        self.init(name: "(none)")
    }
}

var meta: Avator.Type = Player.self
meta.say() // Player