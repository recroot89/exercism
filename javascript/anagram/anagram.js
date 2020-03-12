const wordLetters = (word) => word.toLowerCase().split('').sort().join('');

export const findAnagrams = (baseWord, words) => {
  return words.filter(word => {
    if (word.toLowerCase() === baseWord.toLowerCase() || word.length !== baseWord.length) {
      return false;
    }

    return wordLetters(baseWord) === wordLetters(word);
  });
}
