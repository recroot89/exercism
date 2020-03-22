def equilateral(sides):
    if __is_wrong(sides):
        return False

    a, b, c = sides
    return a == b and b == c


def isosceles(sides):
    if __is_wrong(sides):
        return False

    a, b, c = sides
    return a == b or b == c or c == a

def scalene(sides):
    if __is_wrong(sides):
        return False

    a, b, c = sides
    return a != b and a != c and b != c


def __is_wrong(sides):
    a, b, c = sides
    if a == 0 or b == 0 or c == 0 or (a + b < c) or (a + c < b) or (b + c < a):
        return True
