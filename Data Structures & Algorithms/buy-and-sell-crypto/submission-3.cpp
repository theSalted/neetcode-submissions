class Solution {
public:
    int maxProfit(vector<int>& prices) {
        int low = 1000;
        int diff;

        for (int p : prices) {
            if (p < low) {
                low = p;
            } else {
                int temp = p - low;
                if (temp > diff) {
                    diff = temp;
                }
            }
        }

        return diff;
    }
};
