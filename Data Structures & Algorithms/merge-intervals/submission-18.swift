class Solution {
    func merge(_ intervals: [[Int]]) -> [[Int]] {
        let sorted = intervals.sorted(by: { $0[0] < $1[0]})

        var output: [[Int]] = [sorted[0]]

        for interval in sorted {
            let start = interval[0]
            let end = interval[1]
            var lastEnd = output.last![1]

            if start <= lastEnd {
                output[output.count - 1][1] = max(lastEnd, end)
            } else {
                output.append([start, end])
            }
        }
        return output
    }
}
