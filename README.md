Fictional Glastonbury band descriptions
=========================================

Using the tooltip descriptions of the bands listed on [the Glastonbury website](http://www.glastonburyfestivals.co.uk/line-up/line-up-2016/), builds a Markov chain to generate fictitious band names.

You need my Markov chain library [`horse`](https://github.com/dill/horse):

```{r}
devtools::install_github("dill/horse")
```


# Files

- Example output (selected to be "good") are given in `goodbands.txt`.
- Data are in `desc.txt`.
- Make the chain and generate using `ebooks.R`.


The data probably belong to someone who isn't me.

