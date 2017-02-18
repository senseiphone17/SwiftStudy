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

var dictionary2 = ["Ruby":1995]
print(dictionary2) // ["Ruby": 1995]
dictionary2["Java"] = 1995
print(dictionary2) // ["Java": 1995, "Ruby": 1995]
dictionary2["Python"] = 1991
print(dictionary2) // ["Java": 1995, "Ruby": 1995, "Python": 1991]
dictionary2["Java"] = nil
print(dictionary2) // ["Ruby": 1995, "Python": 1991]

var dictionary3 = dictionary2
print(dictionary2 == dictionary3) // true

dictionary3["Java"] = 1995
print(dictionary2 == dictionary3) // false