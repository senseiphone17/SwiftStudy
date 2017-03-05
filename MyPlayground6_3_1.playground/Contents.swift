enum Direction {
    case north
    case east
    case south
    case west
    
    func clockwise() -> Direction {
        switch self {
        case .north: return .east
        case .east:  return .south
        case .south: return .west
        case .west:  return .north
        }
    }
}

let north = Direction.north
var east: Direction = .east
print(north == east) // false

print(north.clockwise()) // ease
print(east.clockwise())  // south