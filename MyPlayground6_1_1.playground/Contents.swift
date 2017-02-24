for day in [(1, 2), (1, 1), (2, 11)] { // 祝日ではない、　元日、　建国記念日
    
    switch day {
    case (1, 1): print("元日")
    case (2, 11): print("建国記念日")
    default: print("祝日ではない")
    }
}