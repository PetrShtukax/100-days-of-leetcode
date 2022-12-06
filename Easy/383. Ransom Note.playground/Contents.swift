// 383. Ransom Note

//Given two strings ransomNote and magazine, return true if ransomNote can be constructed by using the letters from magazine and false otherwise.
//
//Each letter in magazine can only be used once in ransomNote.
//
//
//
//Example 1:
//
//Input: ransomNote = "a", magazine = "b"
//Output: false
//Example 2:
//
//Input: ransomNote = "aa", magazine = "ab"
//Output: false
//Example 3:
//
//Input: ransomNote = "aa", magazine = "aab"
//Output: true


import UIKit

func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var dict = [Character : Int]()
        for char in ransomNote {
            dict[char] = (dict[char] ?? 0) + 1
        }
        for char in magazine {
            if let count = dict[char] {
                if count > 1 {
                    dict[char] = count - 1
                } else {
                    dict[char] = nil
                }
            }
        }
        return dict.count == 0
    }
  
canConstruct("a", "b")
canConstruct("aa", "ab")
canConstruct("aa", "aab")


