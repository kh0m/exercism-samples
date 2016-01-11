import Foundation

class Crypto {
    var text: String
    
    init(_ text: String){
        self.text = text
    }
    
    // MARK: normalizePlaintext
    var normalizePlaintext: String {
        let characters = text.lowercaseString.characters
            .map {String($0)}
            .filter {
                if let char = $0.utf16.first {
                    return NSCharacterSet.alphanumericCharacterSet().characterIsMember(char)
                }
                return false
            }
        print("\(characters.joinWithSeparator(""))")
        return characters.joinWithSeparator("")
    }
    
    // MARK: size
    var size: Int {
        var x = 0
        while (x*x < normalizePlaintext.characters.count){
            x+=1
        }
        return x
    }
    
    // MARK: plaintextSegments
    var plaintextSegments: [String] {
        let myString = normalizePlaintext
        var segments = [String]()
        
        let last = myString.characters.count % size
        
        var startIndex = (last != 0 ? myString.endIndex.advancedBy(-last): myString.endIndex.advancedBy(-size))
        var endIndex = myString.endIndex
        var section = myString.substringFromIndex(startIndex)
        
        segments.append(section)
        
        while (startIndex > myString.startIndex){
            startIndex = startIndex.advancedBy(-size)
            endIndex = startIndex.advancedBy(size)
            section = myString.substringWithRange(startIndex..<endIndex)
            segments.append(section)
        }
        print(segments)
        return segments.reverse()
    }
    
        
    // MARK: ciphertext
    var ciphertext: String {
        var cipher = ""
        var index = 0
        while (index < size){
            for segment in plaintextSegments {
                var itemAtIndex: Character?
                if (index < segment.characters.count) {
                    itemAtIndex = segment[segment.startIndex.advancedBy(index)]
                    cipher.append(itemAtIndex!)
                }
            }
            index++
        }
        return cipher
    }
        
    // MARK: normalizeCiphertext
    var normalizeCiphertext: String {
        var ct = ciphertext
        var normalizeCT = ""
        while (ct.characters.count > 0){
            if (normalizeCT.characters.count % size != 0){
                normalizeCT.append(ct.removeAtIndex(ct.startIndex))
            } else {
                normalizeCT.append(" " as Character)
            }
        }
        return normalizeCT.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
    }
}

