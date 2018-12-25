# scriptuRs

## An R Package for the Complete LDS Scriptures

This package provides access to the full text the of Jane Austen's 6 completed, published novels. The text for each book of scripture was sourced from [the Mormon Documentation Project](http://scriptures.nephi.org/). Each volume is in a data frame with a row for each verse, along with 19 columns of detailed metadata (including verse number, chapter number, book names, unique identifiers, and so on), ready for text analysis. The package contains:

- `old_testament`: The King James Version of the Old Testament / Hebrew Bible
- `new_testament`: The King James Version of the New Testament
- `book_of_mormon`: The Book of Mormon
- `doctrine_and_covenants`: The Doctrine and Covenants
- `pearl_of_great_price`: The Pearl of Great Price

There is also a function `lds_scriptures()` that returns a tidy data frame of all 5 volumes of scripture.

Unlike other packages like [**janeaustenr**](https://github.com/juliasilge/janeaustenr), this package does not provide ordered factors for book or volume names. It is up to the user to put books and/or volumes in the needed order when analyzing or plotting the data.

## Installation

This package is not released on CRAN yet. You can install the development version from Github:

```r
library(remotes)
install_github("andrewheiss/scriptuRs")
library(scriptuRs)
```

## How to Use This Package

For some ideas on getting started with analyzing these texts, see [*Text Mining with R* by Julia Silge and David Robinson](https://www.tidytextmining.com/), or Julia Silge's [blog post on sentiment analysis of Jane Austen's novels](https://juliasilge.com/blog/if-i-loved-nlp-less/). For help within R, try `?old_testament` or similar for getting started with the data sets.

This project is released with a [Contributor Code of Conduct](CONDUCT.md). By participating in this project you agree to abide by its terms.
