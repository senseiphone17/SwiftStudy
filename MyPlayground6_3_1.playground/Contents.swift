enum Direction : Int{
    case north = 0, east, south, west
    
    func clockwise() -> Direction {
        let t = (self.rawValue + 1) % 4
        return Direction(rawValue:t)!
    }
    
    var horizontal: Bool {
        switch self {
        case .east, .west: return true
        default:
            return false
        }
    }
    
    mutating func turnBack() {
        self = Direction(rawValue:((self.rawValue + 2) % 4))!
    }
}

let north = Direction.north
var east: Direction = .east
print(north == east) // false

print(north.clockwise()) // east
print(east.clockwise())  // south

enum DirectionMark: Int {
    case up = 0,
    down,
    right,
    left
}

print(DirectionMark.right.rawValue == Int(2)) // true

var west = Direction.west
print(west.rawValue) // 3
west.turnBack()
print(west.rawValue) // 1
print(west.horizontal) // true
