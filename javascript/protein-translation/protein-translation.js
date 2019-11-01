//
// This is only a SKELETON file for the 'Protein Translation' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

// I did it without lodash. The difficulty of the exercise does not look like 'Easy'.

const codonProteinTable = {
  'AUG': 'Methionine',
  'UUU': 'Phenylalanine',
  'UUC': 'Phenylalanine',
  'UUA': 'Leucine',
  'UUG': 'Leucine',
  'UCU': 'Serine',
  'UCC': 'Serine',
  'UCA': 'Serine',
  'UCG': 'Serine',
  'UAU': 'Tyrosine',
  'UAC': 'Tyrosine',
  'UGU': 'Cysteine',
  'UGC': 'Cysteine',
  'UGG': 'Tryptophan',
};

const goodCodons = Object.keys(codonProteinTable);
const stopCodons = ['UAA', 'UAG', 'UGA'];

const chunkString = (string, base) => {
  const iter = (acc, str) => {
    if (str === '') {
      return acc;
    }

    return iter([...acc, str.slice(0, base)], str.slice(base));
  };

  return iter([], string);
};

export const translate = (strand) => {
  if (!strand) return [];

  const codons = chunkString(strand, 3);
  const proteins = codons.reduce((acc, codon) => {
    if (stopCodons.includes(codon)) {
      return [...acc, 'STOP'];

    } else if (!goodCodons.includes(codon)) {
      throw new Error("Invalid codon");
    }
    return [...acc, codonProteinTable[codon]];
  }, []);
  const stopIndex = proteins.indexOf('STOP');

  return proteins.includes('STOP') ? proteins.slice(0, stopIndex) : proteins;
};
