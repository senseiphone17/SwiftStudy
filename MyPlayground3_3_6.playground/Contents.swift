/// Index

struct GyudonMenu {
    let menu = ["並盛り", "中盛り", "大盛り"]
    var subMenu = ["チーズ", "キムチ", "キノコ"]
    
    let count = 6
    
    subscript(i: Int) -> String {
        get {
            return i < 3 ? menu[i] : subMenu[i - 3]
        }
        
        set {
            if i > 2 && i < 6 {
                subMenu[i - 3] = newValue
            }
        }
    }
}

var menu = GyudonMenu()
for i in 0 ..< menu.count {
    print(menu[i], terminator: " ") /// 並盛り　中盛り　大盛り　チーズ　キムチ　キノコ
}

print("")
print(menu.menu[2]) /// 大盛り

menu[0] = "プレミアム"
print(menu[0]) /// 並盛り

menu[4] = "プレミアム"
print(menu[4]) /// プレミアム