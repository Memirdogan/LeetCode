class Solution:
    def maximumWealth(self, accounts: List[List[int]]) -> int:
        mx = 0
        for i in accounts:
            cw = sum(i)
            mx = max(mx, cw)
        return mx