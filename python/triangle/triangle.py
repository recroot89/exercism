def valid(fn):
    def wrapper(sides):
        a, b, c = sides
        valid_triangle = not (a == 0 or b == 0 or c == 0 or (a + b < c) or (a + c < b) or (b + c < a))
        return valid_triangle and fn(sides)
    return wrapper

@valid
def equilateral(sides):
    a, b, c = sides
    return a == b and b == c

@valid
def isosceles(sides):
    a, b, c = sides
    return a == b or b == c or c == a

@valid
def scalene(sides):
    a, b, c = sides
    return a != b and a != c and b != c
