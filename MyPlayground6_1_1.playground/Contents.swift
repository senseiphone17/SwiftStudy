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

print("")

func dayOfWeek(_ y:Int, _ m:Int, _ d:Int) -> Int {

    var y = y, m = m
    if m < 3 {
        m += 12; y -= 1
    }
    
    let leap = y + y / 4 - y / 100 + y / 400
    return (leap + (13 * m + 8) / 5 + d) % 7
}

var year = 2017
for day in [(1, 8), (1, 9), (1, 10), (1, 11)] { // 祝日ではない、　成人の日、　祝日ではない、　祝日ではない
    
    switch day {
    case (1, let d) where d >= 8 && d <= 14 && dayOfWeek(year, 1, d) == 1: print("成人の日")
    default: print("祝日ではない")
    }
}
