class Student: CustomStringConvertible {
    let name:String
    var club: Club?
    
    init(name: String) {
        self.name = name
    }
    
    func description() -> String {
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
