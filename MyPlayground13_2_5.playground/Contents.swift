// 13.3 変数のキャプチャ

// List13-5 オーバーロード定義されたメソッドを持つクラスの例

class Friend {
    let name: String
    init(name: String) {
        self.name = name
    }
    
    deinit {
        print("deinit", name)
    }
    
    func sayName() {
        print("\(name)です。")
    }
    
    func sayHello(message: String) {
        print(message + "、\(name)です。")
    }
    
    func sayHello(to s: String) {
        print(s + "さん、こんにちは。")
    }
    
    func sayHello(to f: Friend) {
        self.sayHello(to: f.name)
    }
}

let clo1: (String) -> Friend = Friend.init

var clo2: (Friend) -> ()

do {
    let sen = clo1("千石")
    clo2 = sen.sayHello
    let n = sen.sayName
    n()
}

let ono = Friend(name: "小野寺")
clo2(ono)
clo2 = ono.sayHello