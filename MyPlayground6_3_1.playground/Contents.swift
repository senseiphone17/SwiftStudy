enum Direction {
    case north
    case east
    case south
    case west
}

let north = Direction.north
var east: Direction = .east
print(north == east) // false