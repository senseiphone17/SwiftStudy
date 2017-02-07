/// String

let telili = String(2700)
print(telili) // "2700"

let numTelili = Int(2700)
print(numTelili) // 2700

let charArray:[Character] = ["2", "7", "0", "0"]
let string2700 = String(charArray)
print(string2700) // 2700

let at: Character = "@"
print(at) // @

let shime: Character = "\u{3006}"
print(shime) // 〆

let alphabetC: Character = "C"

if alphabetC >= "A" {
    print("Aより大きい")
}

if alphabetC < "A" {
    print("Aより小さい")
} else {
    print("Aより大きい")
}