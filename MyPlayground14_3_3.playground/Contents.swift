// 14.3 ジェネリクスによる型定義

// List14-11 型パラメータを持つクラスの定義

class GeoPoint<Element> {
    var latitude, longitude: Element
    
    required init(lat: Element, lon: Element) {
        self.latitude = lat
        self.longitude = lon
    }
    
    func toString() -> String {
        return ("\(latitude), \(longitude)")
    }
}

class GPSPoint<T: FloatingPoint> : GeoPoint<T>, CustomStringConvertible {
    var description: String {
        return "GPSPoint: " + toString()
    }
    
    func copy() -> Self {
        return type(of: self).init(lat: latitude, lon: longitude)
    }
}

class ViewPoint: GPSPoint<Double> {
    let name: String
    
    required convenience init(lat: Double, lon: Double) {
        self.init(name: "none", lat: lat, lon: lon)
    }

    required init(name: String, lat: Double, lon: Double) {
        self.name = name
        super.init(lat: lat, lon: lon)
    }
    
    override func copy() -> Self {
        return type(of: self).init(name: name, lat: latitude, lon: longitude)
    }
    
    override func toString() -> String {
        let ns = latitude >= 0.0 ? "N\(latitude)" : "S\(-latitude)"
        let ew = longitude >= 0.0 ? "E\(longitude)" : "W\(-longitude)"
        
        return ns + ", " + ew
    }
    
    override var description: String {
        return "ViewPoint: \(name), " + toString()
    }
}

var g1 = GPSPoint<Float>(lat: 35.70040, lon: 139.77217)
print(g1)

var g2 = ViewPoint(name: "松本城", lat: 36.238064, lon:137.968457)
var g3 = g2.copy()
print(g3)
print(g2 === g3)
