fast-anagrams-search
====================

Rails app for fast and scalable anagrams search.

The implementation emphasizes on the speed of delivery of results and scaling to larger dictionaries.

The dictionary is pre-grouped to anagrams with the word sorted as the key and the anagrams as word with two columns "key" and "word" being indexed.

With the input word sorted, it's quite easy and fast to find anagrams against the key.

As the dictionary resides in db, it can hold very large dictionaries!

The dictionary raw files are in ./db folder.

Reference: https://github.com/gabrielhilal/anagrams.git
