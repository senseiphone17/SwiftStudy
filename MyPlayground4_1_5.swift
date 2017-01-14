#!/usr/bin/swift
print("hoge")

var lineNum = 0

while let line = readLine() {
    lineNum += 1
    print("\(lineNum) " + line)
}

// コンパイルしてから
// swiftc MyPlayground4_1_5.swift

// 下記コマンドで実行
// swift MyPlayground4_1_5.swift < MyPlayground4_1_5.swift

//hoge
// 1 #!/usr/bin/swift
// 2 print("hoge")
// 3
// 4 var lineNum = 0
// 5
// 6 while let line = readLine() {
// 7     lineNum += 1
// 8     print("\(lineNum) " + line)
// 9 }
