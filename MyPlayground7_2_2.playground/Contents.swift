infix operator ^^ : LogicalDisjunctionPrecedence

func ^^ (lhs: Bool, rhs: @autoclosure() -> Bool) -> Bool {
    if lhs { return false }
    return !rhs()
}

if ( false ^^ false ) {
    print("true")
}


if ( true ^^ false ) {

} else {
    print("false")
}

precedencegroup RoundPrecedence {
    higherThan: AdditionPrecedence
    lowerThan: MultiplicationPrecedence
}

infix operator %% : RoundPrecedence

func %% (lhs: Int, rhs: Int) -> Int {
    return lhs - lhs % rhs
}

print(283548328 %% 100) // 283548300
print(6 + 2335 %% 10 * 2) // 2326