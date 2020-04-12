planet_year_ratio = {
    "earth": 1,
    "mercury": 0.2408467,
    "venus": 0.61519726,
    "mars": 1.8808158,
    "jupiter": 11.862615,
    "saturn": 29.447498,
    "uranus": 84.016846,
    "neptune": 164.79132
}

earth_year_in_seconds = 31557600

class SpaceAge:
    def __init__(self, seconds):
        self.years_on_earth = seconds / earth_year_in_seconds

for planet, value in planet_year_ratio.items():
    def _count_years(self, value=value):
        return round(self.years_on_earth / value, 2)
    setattr(SpaceAge, "on_" + planet, _count_years)
