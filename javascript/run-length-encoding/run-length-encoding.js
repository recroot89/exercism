export const encode = (rawString) =>
  rawString.replace(/(.)\1+/g, (chunk, char) => `${chunk.length}${char}`);

export const decode = (rawString) =>
  rawString.replace(/(\d+)(.)/g, (_, count, char) => char.repeat(count));


// old solution without using replace
// export const encode = (rawString) => {
//   if (rawString.length <= 1) {
//     return rawString;
//   }
//   const chars = rawString.split('')

//   const iter = (elements, acc, count, current) => {
//     if (elements.length === 0) {
//       return `${acc}${count > 1 ? count : ''}${current}`;
//     }
//     const [head, ...tail] = elements;
//     if (head === current) {
//       return iter(tail, acc, count + 1, current);
//     }
//     return iter(tail, `${acc}${count > 1 ? count : ''}${current}`, 1, head);
//   };

//   const [first, ...rest] = chars;
//   return iter(rest, '', 1, first);
// };

// export const decode = (rawString) => {
//   if (rawString.length <= 1) {
//     return rawString;
//   }
//   const chars = rawString.split('')

//   const iter = (elements, acc, count) => {
//     if (elements.length === 0) {
//       return acc;
//     }
//     const [head, ...tail] = elements;
//     if (isDigit(head)) {
//       return iter(tail, `${acc}${head.repeat(Number(count === '' ? 1 : count))}`, '');
//     }
//     return iter(tail, acc, `${count}${head}`);
//   };

//   return iter(chars, '', '');
// };

// const isDigit = (num) => isNaN(Number(num)) || num == ' ';
