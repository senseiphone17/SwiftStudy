/// spirograph
/// http://qiita.com/takabosoft/items/dc2720df0378f458cdb3

import UIKit
import PlaygroundSupport

let largeRadius = CGFloat(50)

let smallRadius = CGFloat(35.0)

let smallHoleDistance = CGFloat(32)

let numberOfRotations = 40

let dividing = 150

let pi = CGFloat(M_PI)

let imageSize = CGSize(width: 500, height: 500)
UIGraphicsBeginImageContextWithOptions(imageSize, false, 0)
let ctx = UIGraphicsGetCurrentContext()!

ctx.translateBy(x: imageSize.width / 2, y: imageSize.height / 2)
ctx.scaleBy(x: 1, y: -1)

func circumference(radius: CGFloat) -> CGFloat {
    return radius * 2 * pi
}

let ratio = circumference(radius: largeRadius) / circumference(radius: smallRadius)

ctx.move(to: CGPoint(x: largeRadius - smallRadius + smallHoleDistance, y: 0))
for rot in 0..<numberOfRotations {
    for i in 0..<dividing {

        let angle = 2 * pi / CGFloat(dividing) * CGFloat(i)
        let r = largeRadius - smallRadius
        let x = cos(angle) * r
        let y = sin(angle) * r
        
        let angle2 = -(angle + CGFloat(rot) * 2 * pi) * ratio
        
        let x2 = x + cos(angle2) * smallHoleDistance
        let y2 = y + sin(angle2) * smallHoleDistance
        
        ctx.addLine(to: CGPoint(x: x2, y: y2))
    }
}

UIColor.blue.setStroke()
ctx.strokePath()

let img = UIGraphicsGetImageFromCurrentImageContext()
UIGraphicsEndImageContext()

let view = UIImageView(image: img)
view.backgroundColor = .white
PlaygroundPage.current.liveView = view