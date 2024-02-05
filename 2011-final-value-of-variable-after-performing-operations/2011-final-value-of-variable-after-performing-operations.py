class Solution:
    def finalValueAfterOperations(self, operations: List[str]) -> int:
        X = 0
        for i in operations:
            if "+" in i:
                X = X + 1
            else:
                X = X - 1
        return X