import Foundation

let message = "プロク\u{3099}ラマー餅を食べる"
print(message.characters.count) // 11

let messageNSString = message as NSString
print(messageNSString.length) // 12

print(message)
print(messageNSString)

var flag = true
print("結果は\(flag ? "当選" : "落選")です")

flag = false
print("結果は\(flag ? "当選" : "落選")です")