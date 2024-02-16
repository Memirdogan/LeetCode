class Solution:
    def subtractProductAndSum(self, n: int) -> int:
        s = 0
        mult = 1
        while n > 0:
            digit = n%10
            s += digit
            mult *= digit
            n = n//10
        return mult-s