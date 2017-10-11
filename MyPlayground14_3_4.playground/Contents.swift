// 14.3 ジェネリクスによる型定義

typealias Arrays<T, U> = ( [T], [U] )
let wicca: Arrays<Int, String> = ( [1107, 5210], ["塔", "工房"] )

typealias SortableArray<T: Comparable> = Array<T>
let ta: SortableArray = [ 0.138, 1.09, 0.0, -1.1304 ]
let sa: SortableArray = [ "palm", "top", "tiger" ]

typealias Avatar<T, U> = (power: T, armor: U) where T: Comparable, U: Collection, U.Iterator.Element == (String, T)
let fighter: Avatar = (power: 78, armor: [("Sword", 32), ("Bougan", 26)])
print(fighter.armor.first!)