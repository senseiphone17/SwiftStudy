//: Playground - noun: a place where people can play

import UIKit

protocol Human {
    var name: String { get }
    var petPhrase: String { get set }
    init(name: String)
    func sayHello(to: Human)
}

class Citizen : Human {
    let name: String
    var petPhrase: String = "なるほど"
    required init(name: String) {
        self.name = name
    }
    
    func sayHello(to p:Human) {
        print("どうも、" + p.name + "さん。")
    }
}

let simin = Citizen(name: "太郎")
simin.sayHello(to: simin) // どうも、太郎さん。

let jiro = Citizen(name: "次郎")
simin.sayHello(to: jiro)