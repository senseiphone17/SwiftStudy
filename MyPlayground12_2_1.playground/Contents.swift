// 12.2 処理の中断と後始末

// List12-4
import Foundation

func copyFile(path: String, to dest: String) -> Bool {
    let fpin = fopen(path, "r")
    
    guard fpin != nil else {
        return false
    }
    
    let fpout = fopen(dest, "w")
    
    guard fpout != nil else {
        fclose(fpin)
        return false
    }
    
    while true {
        let ch = fgetc(fpin)
        if ch < 0 {
            break
        }
        fputc(ch, fpout)
    }
    
    fclose(fpin)
    fclose(fpout)
    
    return true
}

// List12-5
func copyFileDefer(path: String, to dest: String) -> Bool {
    let fpin = fopen(path, "r")
    
    guard fpin != nil else {
        return false
    }
    
    defer {
        fclose(fpin)
    }
    
    let fpout = fopen(dest, "w")
    
    guard fpout != nil else {
        return false
    }
    
    defer {
        fclose(fpout)
    }
    
    while true {
        let ch = fgetc(fpin)
        
        if ch < 0 {
            break
        }
        
        fputc(ch, fpout)
    }
    
    return true
}