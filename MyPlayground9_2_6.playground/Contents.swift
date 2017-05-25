class Student: CustomStringConvertible {
    let name: String
    unowned var homeroom: HomeRoom
    
    init(name: String, homeroom: HomeRoom) {
        self.name = name
        self.homeroom = homeroom
    }
    
    var description: String {
        return "\(name), \(homeroom.name)"
    }
    
    deinit {
        print("\(name): deinit")
    }
}

class HomeRoom {
    let name: String
    var members = [Student]()
    init(name: String) {
        self.name = name
    }
    
    func add(_ p: Student) {
        members.append(p)
    }
    
    deinit {
        print("HomeRoom \(name): deinit")
    }
}

do {
    let hr = HomeRoom(name: "3年3組")
}