//
// This is only a SKELETON file for the 'Armstrong numbers' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export const validate = (number) => {
  const digits = String(number);
  return digits.split('').reduce((acc, digit) => acc + Number(digit)**digits.length, 0) === number;
};

