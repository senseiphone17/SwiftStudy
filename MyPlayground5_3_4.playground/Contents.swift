/// Array initializer

var arrayA : Array<Int> = [1, 2, 3, 5, 8]
print(arrayA) // [1, 2, 3, 5, 8]

var arrayB = [Int](0...10)
print(arrayB) // [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

var arrayC = [Character]("いろはにほへと".characters)
print(arrayC) // ["い", "ろ", "は", "に", "ほ", "へ", "と"]

print(arrayC.count) // 7
print(arrayC.first!) // い
print(arrayC.last!) // と
print(arrayC.isEmpty) // false

// Array method
arrayC.append("ち")
print(arrayC) // ["い", "ろ", "は", "に", "ほ", "へ", "と", "ち"]

let arrayAppend: Array<Character> = ["り", "ぬ", "る"]
arrayC.append(contentsOf: arrayAppend)
print(arrayC) // ["い", "ろ", "は", "に", "ほ", "へ", "と", "ち", "り", "ぬ", "る"]

print(arrayC.index(of: "は") as Any) // Optional(2)
print(arrayC.index(of: "む") as Any) // nil

arrayC.insert("Z", at: 0)
print(arrayC) // ["Z", "い", "ろ", "は", "に", "ほ", "へ", "と", "ち", "り", "ぬ", "る"]

arrayC.removeFirst()
print(arrayC) // ["い", "ろ", "は", "に", "ほ", "へ", "と", "ち", "り", "ぬ", "る"]

arrayC.removeLast()
print(arrayC) // ["い", "ろ", "は", "に", "ほ", "へ", "と", "ち", "り", "ぬ"]

arrayC.sort()
print(arrayC) // ["い", "ち", "と", "に", "ぬ", "は", "へ", "ほ", "り", "ろ"]

arrayC.removeAll()
print(arrayC) // []

var arrayD = [Double](repeating:5.0, count:7)
print(arrayD) // [5.0, 5.0, 5.0, 5.0, 5.0, 5.0, 5.0]

var lush = Array(repeating: "石鹸", count: 5)
print(lush) // ["石鹸", "石鹸", "石鹸", "石鹸", "石鹸"] Array<String>