def is_isogram(string):
    letters = ''.join(char for char in string if char.isalpha()).lower()

    return len(set(letters)) == len(letters)
