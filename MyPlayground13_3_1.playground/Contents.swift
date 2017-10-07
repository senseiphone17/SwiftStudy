// 13.3 クロージャの使い方と記法

let list = ["fig.pdf", "filelist1.swift", "OLD", "sample.swift"]
print(list)

let slist = list.sorted(by: {(a: String, b: String) -> Bool in a < b})
print(slist)

let slist2 = list.sorted(by: { $0 < $1 })
print(slist2)

let slist3 = list.sorted(by: < )
print(slist3)

func Z(a: String, b: String) -> Bool {
    return a < b
}

let source = list.filter({$0.hasSuffix(".swift")})
print(source)

func separate(_ list: [String], by filter: (String) -> Bool) -> ([String], [String]) {
    var sel = [String]()
    var des = [String]()
    
    for s in list {
        if filter(s) {
            sel.append(s)
        } else {
            des.append(s)
        }
    }
    
    return(sel, des)
}

let t = separate(list, by: {

    for ch in $0.characters {
        if ch == "." {
            return true
        }
    }
    
    return false
})
print(t)

let t2 = separate(list) {
    for ch in $0.characters {
        if ch == "." {
            return true
        }
    }
    return false
}
print(t2)