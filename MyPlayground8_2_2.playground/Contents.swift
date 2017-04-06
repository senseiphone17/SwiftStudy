class ICCard {
    static let Deposit = 500
    
    var money = 0
    
    required init(charge: Int) {
        money = charge - ICCard.Deposit
    }
}

class Pasmo : ICCard {
    static var serial = 0
    
    let idnumber: Int
    
    init(id: Int, money: Int) {
        idnumber = id
        super.init(charge: money)
    }
    
    required init(charge: Int) {
        Pasmo.serial += 1
        idnumber = Pasmo.serial
        super.init(charge: charge)
    }
}

class Suica: ICCard {
    var name = String()
}

var pasmoA = Pasmo(charge: 1000)
print(pasmoA.idnumber) // 1
print(pasmoA.money) // 500