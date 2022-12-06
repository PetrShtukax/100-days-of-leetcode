// 383. Ransom Note

import UIKit

class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var array = Array(ransomNote)
        
        for a in magazine {
            if let index = array.firstIndex(of: a) {
                array.remove(at: index)
            }
        }
        
        return array.count == 0
    }
}
