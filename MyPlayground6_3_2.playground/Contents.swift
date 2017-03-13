enum Ticket {
    case ticket(Int, Bool, isCoupon: Bool) // 価格 小人 回数ケンカ
    case card(Int, Bool) // 残高 小人
    case pass
}

var t1: Ticket = Ticket.ticket(100, true, isCoupon: false)
var t2: Ticket = Ticket.pass
var t3: Ticket = Ticket.card(100, true)
var t4: Ticket = Ticket.card(220, false)
var t5: Ticket = Ticket.card(200, true)


for t in [t1, t2, t3, t4, t5] {

    switch t {
    case let Ticket.ticket(fare, flag, _):
        print("普通券:\(fare) " + (flag ? "小人" : "大人"))
    case Ticket.pass:
        print("パス")
    case Ticket.card(let r, true) where r < 110:
        print("カード小人: 残高不足")
    case Ticket.card(let r, false) where r < 230:
        print("カード大人: 残高不足")
    case Ticket.card:
        print("カード")
    }
}

// 普通券:100 小人
// パス
// カード小人: 残高不足
// カード大人: 残高不足
// カード

print("")

for t in [t2, t3] {
    if case Ticket.card = t {
        print("カード")
    } else {
        print("カードではない")
    }
}

// カードではない
// カード

print("")

let tickets:[String:Ticket] = ["田中": Ticket.ticket(360, false, isCoupon: true),
                               "山田": Ticket.ticket(320, false, isCoupon: false)]
let name = "山田"

if let t = tickets[name], case Ticket.ticket(320, _, isCoupon: _) = t {
    print("山田のチケット")
}

// 山田のチケット