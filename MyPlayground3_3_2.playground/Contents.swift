/// Type property init

var serialOrigin = 1000

struct Monitor {
    struct Size {
        var width: Int
        var height: Int
    }
    
    static var defaultHeight = 1800
    static var defaultWidth  = 1920
    static var defaultSize = Size(width: defaultWidth, height: defaultHeight)
    
    static func addSeriarID() -> Int {
        serialOrigin += 1
        return serialOrigin
    }
    
    let size: Size
    
    let serialID = "ID:" + String(Monitor.addSeriarID())
    
    init(size: Size = Monitor.defaultSize) {
        self.size = size
    }
    
    func showDetail() {
        print(serialID, "\(size.width)x\(size.height)")
    }
}

let monitorA = Monitor(size: Monitor.Size(width: 1300, height: 900))
monitorA.showDetail() // ID:1001 1300x900

Monitor.defaultHeight = 1200

let monitorB = Monitor()
monitorB.showDetail() // ID:1002 1920x1200

Monitor.defaultWidth = 2400

let monitorC = Monitor()
monitorC.showDetail() // ID:1003 1920x1200