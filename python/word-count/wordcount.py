def word_count(text):
    words = text.split()
    words_counter = {}
    for word in words:
        words_counter[word.lower()] = 0
    for word in words:
        words_counter[word.lower()] += 1
    return words_counter