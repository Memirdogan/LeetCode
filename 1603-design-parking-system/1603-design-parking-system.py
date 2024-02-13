class ParkingSystem:

    def __init__(self, big: int, medium: int, small: int):
        self.slot = {1: big, 2: medium, 3: small}

    def addCar(self, carType: int) -> bool:
        if self.slot[carType] > 0:
            self.slot[carType] -= 1
            return True
        else:
            return False