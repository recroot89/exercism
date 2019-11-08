//
// This is only a SKELETON file for the 'Darts' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export const solve = (x, y) => {
  const innerCircleRadius = 1;
  const middleCircleRadius = 5;
  const outerCircleRadius = 10;

  const distance = Math.sqrt(x**2 + y**2);

  if (distance <= innerCircleRadius) {
    return 10;
  } else if ( distance <= middleCircleRadius) {
    return 5;
  } else if (distance <= outerCircleRadius) {
    return 1;
  } else {
    return 0;
  }
};
