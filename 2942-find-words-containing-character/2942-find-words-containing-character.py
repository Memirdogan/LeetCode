class Solution:
    def findWordsContaining(self, words: List[str], x: str) -> List[int]:
        dizi = []
        for i,w in enumerate(words):
            if x in w:
                dizi.append(i)
        return dizi
