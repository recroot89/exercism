const dnaToRnaTable = {
  'G': 'C',
  'C': 'G',
  'T': 'A',
  'A': 'U'
}

export const toRna = (dna) => dna.toUpperCase().split('').map(code => dnaToRnaTable[code]).join('');
