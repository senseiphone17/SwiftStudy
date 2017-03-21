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
