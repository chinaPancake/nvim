print('works')
a,b = map(int, input().split())

if a > b:
    print('works fine')

class Pierogi:
    def __init__(self, ilosc):
        self.ilosc = ilosc
        print(ilosc)

pierogi = Pierogi(ilosc = 3)

print(pierogi)
