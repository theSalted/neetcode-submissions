class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var store = [Int : Int]()

        for (index, value) in nums.enumerated() {
            let diff = target - value
            if let storedIndex = store[diff] {
                return [storedIndex, index]
            }
            
            store[value] = index
        }
        return []
    }
}
