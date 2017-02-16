var dictionary = ["Swift": 2014, "Objective-C": 1983]
print(dictionary) // ["Objective-C": 1983, "Swift": 2014]

if let value = dictionary["Swift"] {
    print("hoge") // hoge
    print(value) // 2014
}

if let value = dictionary["Java"] {
    print("hoge") // どちらも出力されない
    print(value)  //
}

var dicStringAndInt = [String: Int]()
print(dicStringAndInt) // [:]
print(dicStringAndInt.count) // 0
