// 12.3 アクセス制御

// List12-7
class USBCamera {
    fileprivate var aperture = 2.0
    fileprivate var shutterSpeed = 1.0
    fileprivate func take() {
        print("take a picture")
    }
}

class WebCamera: USBCamera {
    override var aperture: Double {
        didSet {
            shutterSpeed = ss(super.aperture)
        }
    }
    
    override internal fileprivate(set) var shutterSpeed: Double {
        get {
            return super.shutterSpeed
        }
        
        set {
            super.shutterSpeed = newValue
        }
    }
    
    override init() {
        super.init()
    }
    
    internal override func take() {
        super.take()
    }
    
    private func ss(_ f: Double) -> Double {
        return (f * f) / 4000.0
    }
}

var cam = WebCamera()
cam.aperture = 4.0
print(cam.shutterSpeed)
cam.take()

// cam.shutterSpeed = 1.0 / 1000.0
