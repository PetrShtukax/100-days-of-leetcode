import UIKit
import XCTest

//1480. Running Sum of 1d Array

//Example 1:
//Input: nums = [1,2,3,4]
//Output: [1,3,6,10]
//Explanation: Running sum is obtained as follows: [1, 1+2, 1+2+3, 1+2+3+4].
//Example 2:
//
//Input: nums = [1,1,1,1,1]
//Output: [1,2,3,4,5]
//Explanation: Running sum is obtained as follows: [1, 1+1, 1+1+1, 1+1+1+1, 1+1+1+1+1].
//Example 3:
//
//Input: nums = [3,1,2,10,1]
//Output: [3,4,6,16,17]

var a = [1,2,3,4]
var b = [1,1,1,1,1]
var c = [3,1,2,10,1]
func runningSum(_ nums: [Int]) -> [Int] {
        var array: [Int] = [Int]()
        var firstNumber = 0
        for number in nums {
            firstNumber += number
            array.append(firstNumber)
        }
        return array
    }

XCTAssertEqual(runningSum(a), [1,3,6,10])
XCTAssertEqual(runningSum(b), [1,2,3,4,5])
XCTAssertEqual(runningSum(c), [3,4,6,16,17])

