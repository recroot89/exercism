def value(colors):
    first, second, *_ = colors
    bands = [
        "black",
        "brown",
        "red",
        "orange",
        "yellow",
        "green",
        "blue",
        "violet",
        "grey",
        "white",
    ]

    return int(f'{bands.index(first)}{bands.index(second)}')
