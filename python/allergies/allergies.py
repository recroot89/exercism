class Allergies:

    def __init__(self, score):
        self.score = score

    def allergic_to(self, item):
        return item in self.lst

    @property
    def lst(self):
        allergens = ['eggs', 'peanuts', 'shellfish', 'strawberries', 'tomatoes', 'chocolate', 'pollen', 'cats']
        score = self.score % 256
        result = []
        for power in list(reversed(range(len(allergens)))):
            if score >= 2**power:
                result.append(allergens[power])
                score -= 2**power

        return result
