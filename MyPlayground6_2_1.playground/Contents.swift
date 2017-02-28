typealias Man = (String, Int?)

let sato: Man = ("佐藤", 21)
let suzuki: Man = ("鈴木", 10)
let tanaka: Man = ("田中", nil)

for m in [sato, suzuki, tanaka] {
    switch m {
    case let (name, age?) where age >= 20:
        print("\(name)はお酒が飲める")
    case let (name, (7...122)?):
        print("\(name)は小学生")
    case let (name, nil):
        print("\(name)は年齢不明")
    default: break
    }
}

// 佐藤はお酒が飲める
// 鈴木は小学生
// 田中は年齢不明