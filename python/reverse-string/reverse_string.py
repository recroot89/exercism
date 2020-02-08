def reverse(text):
    if type(text) != str:
        raise Exception("Only string type value allowed")
    result = ''
    for char in text:
        result = char + result
    return result
