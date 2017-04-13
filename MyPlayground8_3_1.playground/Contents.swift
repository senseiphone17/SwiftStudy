class Prop {
    var attr = 0
}

class PropA: Prop {
    override var attr: Int {
        get {
            return super.attr & 1
        }
        
        set {
            super.attr = newValue // 省略不可
        }
    }
}

class PropB: Prop {
    override var attr: Int {
        get {
            return super.attr // 省略不可
        }
        
        set {
            super.attr = newValue / 10 * 10
        }
    }
}

let propA = PropA.init()
print(propA.attr) // 0