/// Array initializer

var arrayA : Array<Int> = [1, 2, 3, 5, 8]
print(arrayA) // [1, 2, 3, 5, 8]

var arrayB = [Int](0...10)
print(arrayB) // [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

var arrayC = [Character]("いろはにほへと".characters)
print(arrayC) // ["い", "ろ", "は", "に", "ほ", "へ", "と"]