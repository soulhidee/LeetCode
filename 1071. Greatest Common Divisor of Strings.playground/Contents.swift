import UIKit


func gcdOfStrings(_ str1: String, _ str2: String) -> String {
    let minLength = min(str1.count, str2.count)
    
    func isDivisible(_ s: String, by t: String) -> Bool {
        if s.count % t.count != 0 { return false }
        let repeatCount = s.count / t.count
        
        return String(repeating: t, count: repeatCount) == s
    }
    
    for i in stride(from: minLength, through: 1, by: -1) {
        let candidate = String(str1.prefix(i))
        if isDivisible(str1, by: candidate) && isDivisible(str2, by: candidate) {
            return candidate
        }
    }
    
    return ""
}

let result = gcdOfStrings("ABCABC", "ABC")

print(result)



