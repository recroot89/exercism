//
// This is only a SKELETON file for the 'Triangle' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export class Triangle {
  constructor(a, b, c) {
    this.a = a;
    this.b = b;
    this.c = c;
  }

  kind() {
    if (!this.isTriangleCorrect()) {
      throw new Error("Illegal triangle");
    }

    if (this.a == this.b && this.a == this.c && this.b == this.c) {
      return 'equilateral';
    } else if (this.a != this.b && this.a != this.c && this.b != this.c) {
      return 'scalene';     
    }
    return 'isosceles';
  }

  isTriangleCorrect() {
    if (this.a <= 0 || this.b <= 0 || this.c <= 0) {
      return false;
    }

    return (this.a + this.b > this.c) && (this.b + this.c > this.a) && (this.a + this.c > this.b)
  }  
}
