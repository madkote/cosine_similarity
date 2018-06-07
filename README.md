
# Cosine Similarity: Python, Perl and C++ library

# About

Cosine Similarity is a measure of similarity between two documents. This package
is a simple library in three languages: __Python__, __C++__ and __Perl__. Cosine
similarity is widely used in Information Retrieval and Document Classification.
For an example of a project where Cosine Similarity is used, see [here](https://gitlab.com/vgratian/porn_tweets).

This similarity is calculated by measuring the angle between the vectors in a
high dimensional vector space.

### Input
Expected input is two vectors of equal length that represent two documents.
These vectors are typically TF-IDF scores, but you can also use word frequencies
or counts.

In the test files, we just randomly generate two vectors, therefore the
"similarity" between them is also random.

### Output

Output is a number between -1 and 1, where 1 means the two vectors are
completely similar (or identical), 0 means they have no similarity at all and -1
means they are opposite of each other.

# Computational Performance

On my Dell XPS computer with 8G memory and 4 core i5 processor and running on
Arch Linux, I got the following runtimes :


__Python__:
```
$ python cos_sim_test.py
Runtime: 0.963 s
```

__Perl__:
```
$ perl cos_sim_test.pl
Runtime: 0.377 s
```

__C++__:
```
$ make cos_sim_test && ./cos_sim_test
Runtime: 0.029 s.

```

# License

Feel free to reuse this code anyhow you want under the GPL license.