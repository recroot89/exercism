def is_paired(input_string):
    OPEN_BRACKETS = "({["
    CLOSE_BRACKETS = ")}]"

    bracket_stack = []
    for char in input_string:
        if char in OPEN_BRACKETS:
            bracket_stack.append(char)
        if char not in CLOSE_BRACKETS:
            continue
        if len(bracket_stack) == 0 or CLOSE_BRACKETS.index(char) != OPEN_BRACKETS.index(bracket_stack.pop()):
            return False

    return len(bracket_stack) == 0
