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

print("")
for day in [(5, 4), (5, 3), (8, 1), (8, 31)] { // 祝日ではない、　憲法記念日、　8/1は夏休みです、　8/31は夏休みです
    
    switch day {
    case (5, 3): print("憲法記念日")
    case (8, let d): print("8/\(d)は夏休みです")
    default: print("祝日ではない")
    }
}
