class Solution {
    func largestNumber(_ nums: [Int]) -> String {
        let result = nums
            .map({String($0)})
            .sorted(by: { $0 + $1 > $1 + $0 })
            .joined()
        return result.first == "0" ? "0" : result
    }
}
