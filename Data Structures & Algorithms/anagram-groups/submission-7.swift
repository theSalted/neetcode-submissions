class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var store = [String: [String]]()

        for str in strs {
            let key = String(str.sorted())
            var items = store[key] ?? [String]()
            items.append(str)
            store[key] = items

        }

        return Array(store.values)

    }
}
