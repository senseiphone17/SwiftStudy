import Foundation

class FileAttribute {
    let filename: String
    lazy var size: Int = self.getFileSize()
    init(file: String) {
        filename = file
    }
    
    func getFileSize() -> Int {
        var buffer = stat()
        stat(filename, &buffer)
        print("[getFileSize]")
        return Int(buffer.st_size)
    }
}

let d = FileAttribute(file: "text.txt")
print(d.filename)
print(d.size)
print(d.size)