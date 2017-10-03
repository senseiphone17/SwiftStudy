extension String {
    var length: Int {
        return self.characters.count
    }
}

let hoge: String = "hoge"
print(hoge.length) // 4

let overload = "オーハ\u{3099}ーロート\u{3099}"
print(overload, overload.length)