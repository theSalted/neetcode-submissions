class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        let sorted = Set(nums).sorted()
        var result = 0

        var current = nums.isEmpty ? 0 : 1
        var prev: Int? = nil
        
        for num in sorted {
            if let prev, num == prev || num == prev + 1 {
                current += 1
                print("true")
            } else {
                current = 1
                print("false")
            }

            prev = num 
            result = max(result, current)
        }

        return result
    }
}
