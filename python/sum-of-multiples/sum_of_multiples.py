def sum_of_multiples(limit, multiples):
    return sum([x for x in range(1, limit) if has_multiply(x, multiples)])


def has_multiply(value, multiples):
    for x in multiples:
        if x == 0:
            pass
        elif value % x == 0:
            return True

    return False
