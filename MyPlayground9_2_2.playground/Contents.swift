class Student: CustomStringConvertible {
    let name:String
    var club: Club?
    
    init(name: String) {
        self.name = name
    }
    
    var description: String {
                var s = "\(name)"
        
                if let mem = club {
                    s += ", \(mem.name)"
                }
                
                return s
    }

    deinit {
        print("\(name): deinit")
    }
}

class Club {
    let name: String
    var members = [Student]()
    
    init(name: String) {
        self.name = name
    }
    
    func add(_ p: Student) {
        members.append(p)
        p.club = self
    }
    
    deinit {
        print("Club \(name): deinit")
    }
}
