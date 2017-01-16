/// optional inout

var x: Int? = 100
var y: Int? = nil
swap(&x, &y)

print(x ?? "x = nil") // x = nil
print(y ?? "y = nil") // 100
print("")

var eight: Int = 8
var eighty: Int? = 80
var kakuhen: Int! = 777

swap(&eight, &eighty!)
print(eight)    // 80
print(eighty!)  // 8
print("")

swap(&eight, &kakuhen!)
print(eight)    // 777
print(kakuhen!) // 80
print("")
