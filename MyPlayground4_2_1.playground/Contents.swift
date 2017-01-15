/// optional

func nickname(_ name : String?, age: Int) -> String {
    let s = name ?? "名無し"
    return "世界の" + s + "\(age)歳"
}

nickname("ワタナベ", age: 30) // 世界のワタナベ30歳
nickname(nil, age: 20)      // 世界の名無し20歳

var name: String? = "中田"
nickname(name, age: 38)     // 世界の中田38歳

name = nil
nickname(name, age: 38)     // 世界の名無し38歳