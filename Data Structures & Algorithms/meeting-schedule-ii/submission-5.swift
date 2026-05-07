/**
 * Definition of Interval:
 * class Interval {
 *     var start: Int
 *     var end: Int
 *     init(_ start: Int, _ end: Int) {
 *         self.start = start
 *         self.end = end
 *     }
 * }
 */

class Solution {
    func minMeetingRooms(_ intervals: [Interval]) -> Int {
        let startTimes = intervals.map { $0.start }.sorted()
        let endTimes = intervals.map { $0.end }.sorted()

        print(startTimes)
        print(endTimes)

        var i = 0
        var j = 0
        var result = 0
        var counter = 0

        while i < intervals.count {
            if startTimes[i] < endTimes[j] {
                counter += 1
                i += 1
            } else {
                counter -= 1
                j += 1
            }

            result = max(result, counter)
        }

        return result
    }
}
