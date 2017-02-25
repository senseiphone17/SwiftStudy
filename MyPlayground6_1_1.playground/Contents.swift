for day in [(1, 2), (1, 1), (2, 11)] { // 祝日ではない、　元日、　建国記念日
    
    switch day {
    case (1, 1): print("元日")
    case (2, 11): print("建国記念日")
    default: print("祝日ではない")
    }
}
print("")

for day in [(1, 2), (5, 3), (4, 29), (5, 5)] { // 正月休み、　憲法記念日、　GW、　GW
    
    switch day {
    case (1, 1...5): print("正月休み")
    case (5, 3): print("憲法記念日")
    case (4, 29), (5,2...6): print("GW")
    default: print("祝日ではない")
    }
}

