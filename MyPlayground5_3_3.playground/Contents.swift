/// ArraySlice

var month = ["JAN", "FEB", "MAR", "APL", "MAY", "JUN", "JUL"]

let Kamiki = month[3...5]

print(Kamiki) // ["APL", "MAY", "JUN"]

print(Kamiki.count) // 3
print(Kamiki.startIndex) // 3
print(Kamiki[4]) // MAY