def square_of_sum(number):
    return sum(range(1, number + 1)) ** 2

def sum_of_squares(number):
    numbers = list(range(1, number + 1))
    return sum(map(lambda value: value ** 2, numbers))


def difference_of_squares(number):
    return square_of_sum(number) - sum_of_squares(number)
