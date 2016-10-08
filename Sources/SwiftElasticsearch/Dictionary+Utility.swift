import Foundation

extension Dictionary {
    func merging(otherDictionary other: [Key: Value]) -> [Key: Value] {
        return self.reduce(other, { (result, dictPair) -> [Key: Value] in
            var newResult = result
            newResult[dictPair.key] = dictPair.value
            return newResult
        })
    }
    
    func jsonString() -> String? {
        guard let data = try? JSONSerialization.data(withJSONObject: self, options: .prettyPrinted) else {
            return nil
        }
        return String(data: data, encoding: .utf8)
    }
    
}
