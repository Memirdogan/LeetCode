class Solution:
    def mostWordsFound(self, sentences: List[str]) -> int:
        num = 0
        for i in sentences:
            num = max(len(i.split()),num)
        return num