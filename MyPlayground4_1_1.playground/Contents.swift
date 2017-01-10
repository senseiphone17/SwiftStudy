/// Optironal

var a: Int? = 0
var b: Int = 0

a = nil
/// b = nil /// エラー

let birthYear = "1984"
var yearA: Int? = Int(birthYear)  // 1984
var yearB: Int? = Int("lastYear") // nil

var age : Int = 2017 - yearA! // 33


var rio : Int? = Int("2016")

if rio != nil {
    print("Rio : \(rio!)")
}

if rio == 2020 {
    print(2020)
} else if rio == 2016 {
    print(2016)
}