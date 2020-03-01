class Matrix:
    def __init__(self, matrix_string):
        self.matrix_string = matrix_string
        self.matrix = self.__matrix(matrix_string)

    def row(self, index):
        return self.matrix[index - 1]

    def column(self, index):
        return list(map(lambda r: r[index - 1], self.matrix))


    def __matrix(self, matrix_string):
        array = list(map(lambda row: row.split(' '), matrix_string.split("\n")))
        return [[int(item) for item in row] for row in array]
