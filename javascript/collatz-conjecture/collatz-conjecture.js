//
// This is only a SKELETON file for the 'Collatz Conjecture' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export const steps = (number) => {
  if (number <= 0) {
    throw new Error("Only positive numbers are allowed");
  }
  const iter = (acc, num) => {
    if (num === 1) {
      return acc;
    }
    return iter(acc + 1, num % 2 === 0 ? num / 2 : num * 3 + 1);
  };
  
  return iter(0, number);
};


