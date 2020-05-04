def to_rna(dna_strand):
    dna_to_rna_table = {
            "G": "C",
            "C": "G",
            "T": "A",
            "A": "U"
            }

    return "".join(dna_to_rna_table[acid] for acid in dna_strand)
