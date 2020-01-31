def convert(number):
    acc = ''
    if number % 7 == 0:
        acc = f'Plong{acc}'
    if number % 5 == 0:
        acc = f'Plang{acc}'
    if number % 3 == 0:
        acc = f'Pling{acc}'
    if acc == '':
        return str(number)
    return acc
