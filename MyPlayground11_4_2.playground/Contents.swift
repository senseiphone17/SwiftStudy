// 11.4 集合とプロトコル

// List11-16
struct RoomOption: OptionSet {
    typealias RawValue = Int
    
    let rawValue: RawValue
    
    static let none = RoomOption(rawValue: 0x00)
    static let internet = RoomOption(rawValue: 0x01)
    static let breakfast = RoomOption(rawValue: 0x02)
    static let fullbath = RoomOption(rawValue: 0x04)
    static let all = RoomOption(rawValue: 0x07)
}

var room: RoomOption = [.internet, .fullbath]
print(room.rawValue)

if !room.contains(.breakfast) {
    room.insert(.breakfast)
}
print(room.rawValue)