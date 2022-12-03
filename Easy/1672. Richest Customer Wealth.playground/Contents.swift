import UIKit
import XCTest

// 1672. Richest Customer Wealth

// Example 1:
//
// Input: accounts = [[1,2,3],[3,2,1]]
// Output: 6
// Explanation:
// 1st customer has wealth = 1 + 2 + 3 = 6
// 2nd customer has wealth = 3 + 2 + 1 = 6
// Both customers are considered the richest with a wealth of 6 each, so return 6.
// Example 2:
//
// Input: accounts = [[1,5],[7,3],[3,5]]
// Output: 10
// Explanation:
// 1st customer has wealth = 6
// 2nd customer has wealth = 10
// 3rd customer has wealth = 8
// The 2nd customer is the richest with a wealth of 10.
// Example 3:
//
// Input: accounts = [[2,8,7],[7,1,3],[1,9,5]]
// Output: 17

var a = [[1,2,3],[3,2,1]]
var b = [[1,5],[7,3],[3,5]]
var c = [[2,8,7],[7,1,3],[1,9,5]]

func maximumWealth(_ accounts: [[Int]]) -> Int {
        return accounts.reduce(0, { max($0, $1.reduce(0, +)) })
}

//func maximumWealth(_ accounts: [[Int]]) -> Int {
//    var a = Int()
//    for num in accounts {
//        let b = num.reduce(0, +)
//        if a <= b {
//            a = num.reduce(0, +)
//        }
//    }
//    return a
//    }

XCTAssertEqual(maximumWealth(a), 6)
XCTAssertEqual(maximumWealth(b), 10)
XCTAssertEqual(maximumWealth(c), 17)
