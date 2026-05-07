class Solution {
public:
    int lengthOfLongestSubstring(string s) {
        int result = 0;
        int l = 0;
        unordered_set<char> charSet;

        for (int r = 0; r < s.size(); r++) {
            while (charSet.find(s[r]) != charSet.end()) {
                charSet.erase(s[l]);
                l++;
            }
            charSet.insert(s[r]);
            result = max(result, r - l + 1);
        }

        return result;
    }
};
