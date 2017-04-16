class Recipe {
    let amount = [6.6, 8.9, 7.5, 9.1]
    
    subscript (idx: Int) -> Double{
        return idx < amount.count ? amount[idx] : 0.0
    }
}

class Arrange: Recipe {
    private var custom: [Double] = []
    override init() {
        super.init()
        custom = amount
    }
    
    override subscript (idx: Int) -> Double {
        get {
            return idx < custom.count ? custom[idx]: 0.0
        }
        
        set {
            if idx < custom.count {
                custom[idx] = newValue
            }
        }
    }
    
    func recall(at idx: Int) {
        self[idx] = super[idx]
    }
}

var arrangeA = Arrange.init()
print(arrangeA[0]) // 6.6
print(arrangeA[1]) // 8.9
print(arrangeA[2]) // 7.5
print(arrangeA[3]) // 9.1
print(arrangeA[4]) // 0.0