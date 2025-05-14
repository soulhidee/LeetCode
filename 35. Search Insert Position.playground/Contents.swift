import UIKit

func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    var low = 0
    var high = 1
    
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
    
    return low
}

let result = searchInsert([1, 2, 3, 5, 6], 4)
print(result)
