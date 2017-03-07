enum Direction : Int{
    case north = 0, east, south, west
    
    func clockwise() -> Direction {
        let t = (self.rawValue + 1) % 4
        return Direction(rawValue:t)!
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