class Student: CustomStringConvertible {
    let name:String
    weak var club: Club?
    
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

var tinyClub: Club! = Club(name: "ひるね同好会")
var yuji: Student! = Student(name: "ゆうじ")
tinyClub.add(yuji)
print(yuji)
tinyClub.add(Student(name: "かずみ"))
tinyClub = nil

print(yuji)
yuji = nil