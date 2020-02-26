def is_armstrong_number(number):
    str_number = str(number)
    return sum(map(lambda x: int(x) ** len(str_number), str_number)) == number
