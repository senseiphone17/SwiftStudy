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

print("")

enum Message : CustomStringConvertible{
    case text(String, String)
    case data(String, [Int8])
    indirect case forward(String, Message)
    
    var description: String {
        switch self {
        case let Message.text(from, str): return from + "(" + str + ")"
        case let Message.data(from, _): return from + "[データ]"
        case let Message.forward(from, msg): return from +  "←\(msg)"
        }
    }
}

let m1 = Message.text("田中", "こんにちは")
let m2 = Message.forward("木村", m1)
let m3 = Message.forward("村山", m2)
print(m3) // 村山←木村←田中(こんにちは)