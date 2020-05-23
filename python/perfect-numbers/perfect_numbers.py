def classify(number):
    if number <= 0:
        raise ValueError('Number must be positive')

    num_dividers = [x for x in range(1, number // 2 + 1) if number % x == 0]
    sum_dividers = sum(num_dividers)

    if sum_dividers == number:
        return 'perfect'
    elif sum_dividers < number:
        return 'deficient'
    else:
        return 'abundant'
