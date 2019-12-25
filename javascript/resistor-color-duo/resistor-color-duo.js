//
// This is only a SKELETON file for the 'Resistor Color Duo' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export const decodedValue = (input_bands) => {
  const bands = ['black', 'brown', 'red', 'orange', 'yellow', 'green', 'blue', 'violet', 'grey', 'white'];
  const [first, second] = input_bands;

  return Number(`${bands.indexOf(first)}${bands.indexOf(second)}`);
};

