import Cocoa

extension CGRect {
    init(points p1: CGPoint, _ p2: CGPoint) {
        var ox: CGFloat
        var oy: CGFloat
        var w: CGFloat
        var h: CGFloat
        
        (ox, w) = p1.x < p2.x ? (p1.x, p2.x - p1.x) : (p2.x, p1.x - p2.x)
        (oy, h) = p1.y < p2.y ? (p1.y, p2.y - p1.y) : (p2.y, p1.y - p2.y)
        
        self.origin = CGPoint(x: ox, y: oy)
        self.size = CGSize(width: w, height: h)
    }
    
    static var reverse = false // 反対方向に回る
    
    subscript (i: Int) -> CGPoint {
        var p = self.origin
        
        let (xinc, yinc) = CGRect.reverse ? (3, 1) : (1, 3)
        
        if i == xinc || i == 2 {
            p.x += self.width
        }
        
        if i == 2 || i == yinc {
            p.y += self.height
        }
        return p
    }
}

let p1 = CGPoint(x: 10.0, y: 105.0)
let p2 = CGPoint(x: 130.0, y: 15.0)

let rect = CGRect(points: p1, p2)
print(rect)

for i in 0...2 {
    print(rect[i], terminator:", ")
}
print(rect[3])