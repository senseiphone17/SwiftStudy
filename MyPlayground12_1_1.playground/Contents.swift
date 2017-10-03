// 12.1 エラー処理構文

// List12-1
enum FormatError: Error {
    case notHex(Character)
    case space
}

func hex(_ c: UnicodeScalar) throws -> Int {
    var d = 0
    switch c {
    case UnicodeScalar("A") ... UnicodeScalar("F"): d = 0x41 - 10
    case UnicodeScalar("a") ... UnicodeScalar("f"): d = 0x61 - 10
    case UnicodeScalar("0") ... UnicodeScalar("9"): d = 0x30
    default: throw FormatError.notHex(Character(c))
    }
    return Int(c.value) - d
}

func hexToBytes(_ s: String) throws -> [UInt8] {
    let s = s + " "
    
    var bytes = [UInt8]()
    
    var first: Int? = nil
    
    do {
        for uc in s.unicodeScalars {
            if let v = first {
                if uc == " " {
                    throw FormatError.space
                }
                
                let w = try hex(uc)
                
                bytes.append(UInt8((v << 4) | w))
                first = nil
            } else if uc != " " {
                first = try hex(uc)
            }
        }
    } catch FormatError.space {
        print("16進数は偶数業で読み込みます")
    }
    
    return bytes
}

for str in [ "0fff80", "0D 0E 10 2030", "ffee aaa", "00GGHH" ] {
    print("input = \"\(str)\"")

    do {
        let bytes = try hexToBytes(str)
        print(bytes)
    } catch {
        print(error)
    }
}