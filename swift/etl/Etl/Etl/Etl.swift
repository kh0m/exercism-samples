import Foundation

class ETL{
    class func transform(old: NSDictionary) -> NSDictionary{
        let new = NSMutableDictionary()
        for (score, letters)in old{
            for letter in (letters as! NSArray){
                new.setValue(score, forKey: letter.lowercaseString)
            }
        }
        return new
    }
}