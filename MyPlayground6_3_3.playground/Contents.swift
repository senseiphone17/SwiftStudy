enum Ticket {
    case ticket(Int, Bool, coupon:Bool)
    case card(Int, Bool)
    case pass

    mutating func pay(_ u: Int) -> Bool {
        switch self {
        case Ticket.ticket(let fare, _, _):
            return u <= fare
        case Ticket.card(let point, let flag):
            if point < u { return false }
            self = Ticket.card(point - u, flag)
        default: break
        }
        return true
    }
}

var myCard: Ticket = Ticket.card(300, false)
if myCard.pay(260) { print(myCard) } // card(40, false)
if myCard.pay(220) { print(myCard) }