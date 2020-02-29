const earth_year_in_seconds = 31557600;

const planet_year_ratio = {
  earth: 1,
  mercury: 0.2408467,
  venus: 0.61519726,
  mars: 1.8808158,
  jupiter: 11.862615,
  saturn: 29.447498,
  uranus: 84.016846,
  neptune: 164.79132
};

export const age = (planet, seconds) =>
  Number((seconds / earth_year_in_seconds / planet_year_ratio[planet]).toFixed(2));
