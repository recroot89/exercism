def find_anagrams(word, candidates):
    word_lower = word.lower()
    word_letters = "".join(sorted(word_lower))

    def is_anagram(candidate):
        candidate_lower = candidate.lower()
        candidate_letters = ''.join(sorted(candidate_lower))

        return candidate_letters == word_letters and candidate_lower != word_lower

    return filter(is_anagram, candidates)
