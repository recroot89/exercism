export const countWords = (words_string) => {
  const words = words_string
    .toLowerCase()
    .match(/\b\w+('\w)?\b/g)

  return words.reduce((acc, word) => {
    return { ...acc, [word]: !!acc[word] ? acc[word] + 1 : 1 }
  }, {});
};
