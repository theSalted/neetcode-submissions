class Solution {
    func eraseOverlapIntervals(_ intervals: [[Int]]) -> Int {
        let sorted = intervals.sorted(by: { $0[1] < $1[1]})

        var lastEnd = sorted[0][1]
        var res = 0

        for i in 1..<sorted.count {
            if lastEnd > sorted[i][0] {
                res += 1
            } else {
                lastEnd = sorted[i][1]
            }
        }

        return res
    }
}
