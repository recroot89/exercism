def distance(strand_a, strand_b):
    if len(strand_a) != len(strand_b):
        raise ValueError('Strand length must be the same.')

    result = 0
    for index, char in enumerate(strand_a):
        if char != strand_b[index]:
            result += 1

    return result
