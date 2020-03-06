export const isPangram = (sentence) =>
  new Set(sentence.toLowerCase().replace(/[^a-z]/g, '')).size === 26
