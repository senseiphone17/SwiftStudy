enum Ticket {
    case ticket(Int, Bool, isCoupon: Bool) // 価格 小人 回数ケンカ
//    case card(Int, Bool) // 残高 小人
    case pass
}




var t1: Ticket = Ticket.ticket(100, true, isCoupon: false)
var t2: Ticket = Ticket.pass

for t in [t1, t2] { // 普通券:100 小人  バス

    switch t {
    case let Ticket.ticket(fare, flag, _):
        print("普通券:\(fare) " + (flag ? "小人" : "大人"))
    case Ticket.pass:
        print("パス")
    }

}
