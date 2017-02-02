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

func maxOfInts(_ first: Int, _ parameters: Int...) -> Int {
    var max = first
    
    for value in parameters {
        if max < value { max = value}
    }
    return max
}

print( maxOfInts(10, 40, 20)) // 40
print( maxOfInts(30, 25)) // 30
print( maxOfInts(3)) // 3

func numPrince(_ prince: Character..., label: String) {
    for n in prince {
        print(label + String(n), terminator: " ")
    }
    print("")
}

numPrince("A", "B", "C", label: "王子") // 王子A, 王子B, 王子C

var nestArray: [[String]] = [["あ", "い", "う"], ["A", "B"]]
print(nestArray[1]) // ["A", "B"]
print(nestArray[0][1]) // "い"
nestArray[0].remove(at: 1)
print(nestArray) // [["あ", "う"], ["A", "B"]]