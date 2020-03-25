def steps(number):
    if number < 1:
        raise ValueError('Number must be positive')

    def iter(num, count):
        if num == 1:
            return count
        if num % 2 == 0:
            return iter(num / 2, count + 1)
        return iter(num * 3 + 1, count + 1)

    return iter(number, 0)
