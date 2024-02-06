class Solution:
    def shuffle(self, nums: List[int], n: int) -> List[int]:
        lst = []
        for i in range(0,n):
            lst.append(nums[i])
            lst.append(nums[i+n])
        return lst