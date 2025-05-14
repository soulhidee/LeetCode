import UIKit

func search(_ nums: [Int], _ target: Int) -> Int {
    var low = 0
    var high = nums.count - 1
    
    while low <= high {
        let mid = (low + high) / 2
        let guess = nums[mid]
        
        if guess == target {
            return mid
        } else if guess < target {
            low = mid + 1
        } else {
            high = mid - 1
        }
    }
    
    return -1
}

let result = search([1, 2, 3, 4, 5, 10, 22], 22)

print(result)
