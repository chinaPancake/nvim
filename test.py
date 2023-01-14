print('cyce')
a,b = map(int, input().split())

if a > b:
    print('duze')

class Pierogi:
    def __init__(self, ilosc):
        self.ilosc = ilosc
        print(ilosc)

pierogi = Pierogi(ilosc = 3)

print(pierogi)
