enum WordWithRuby {
    case word(String)
    case withRuby(String, String)
    
    static func ==(lhs: WordWithRuby, rhs: WordWithRuby) -> Bool {
        switch (lhs, rhs) {
        case let (.word(a), .word(b)),
             let (.word(a), .withRuby(b, _)),
             let (.withRuby(a, _), .word(b)):
            return a == b
            
        case let (.withRuby(a, s), .withRuby(b, t)):
            return a == b && s == t
        }
    }
}

let a = WordWithRuby.withRuby("結城", "ゆうき")
let b = WordWithRuby.withRuby("茅場", "かやば")

print(a == WordWithRuby.withRuby("勇気", "ゆうき"))
print(b == WordWithRuby.word("茅場"))