import UIKit

func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
    var result: [Bool] = []
    let maxCandies = candies.max() ?? 0
    
    for candy in candies {
        if candy + extraCandies >= maxCandies {
            result.append(true)
        } else {
            result.append(false)
        }
    }
    
    return result
}

let result = kidsWithCandies([1,2,3,4,5], 1)


func kidsWithCandies2(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
    let maxCandies = candies.max() ?? 0
    
    return candies.map { $0 + extraCandies >= maxCandies }
}

let result2 = kidsWithCandies2([1,2,3,4,5], 1)
