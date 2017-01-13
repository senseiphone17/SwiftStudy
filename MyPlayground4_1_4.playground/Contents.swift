/// guard

let num = [ "00", "3", "5", "06", "7", "a", "" ]

for str in num {
    guard let v = Int(str) else {
        print(str + "??")
        break
    }
    print(v, terminator:" ")
}