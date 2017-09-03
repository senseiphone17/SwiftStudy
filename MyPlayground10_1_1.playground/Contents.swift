//: Playground - noun: a place where people can play

import UIKit

protocol Human {
    var name: String { get }
    var petPhrase: String { get set }
    init(name: String)
    func sayHello(to: Human)
}