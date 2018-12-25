#' Tidy data frame of the LDS scriptures
#'
#' Returns a tidy data frame of the Standard Works of The Church of Jesus Christ
#' of Latter-day Saints (LDS) (King James Bible, Book of Mormon, Doctrine and
#' Covenants, and the Pearl of Great Price), with one verse for every row. There
#' are several columns, including: \code{text}, which contains the text of each
#' verse, \code{book_title}, the book of scripture, \code{chapter_number}, the
#' chapter, and \code{verse_number}, the verse number. There are a dozen other
#' columns as well: see "Details" for complete descriptions.
#'
#' Importantly, none of the title columns are ordered factors. It is the
#' responsibility of the user to create ordered factors of book and volume
#' titles when plotting results.
#'
#' @details Every row in the dataset is a verse, and there are 19 columns of
#'   metadata:
#'   \describe{
#'     \item{\code{volume_id}}{Unique id number for the volume (1 = Old Testament, 2 = New Testament, etc.)}
#'     \item{\code{book_id}}{Unique id number for the book (1 = Genesis, 2 = Exodus, etc.)}
#'     \item{\code{chapter_id}}{Unique id number for the chapter (50 = Genesis 50, 51 = Exodus 1, etc.)}
#'     \item{\code{verse_id}}{Unique id number for the verse (31 = Genesis 1:31, 32 = Genesis 2:1)}
#'     \item{\code{volume_title}}{Name of the volume}
#'     \item{\code{book_title}}{Name of the book}
#'     \item{\code{volume_long_title}}{Full name of the volume}
#'     \item{\code{book_long_title}}{Full name of the book}
#'     \item{\code{volume_subtitle}}{Subtitle of the volume}
#'     \item{\code{book_subtitle}}{Subtitle of the book}
#'     \item{\code{volume_short_title}}{Volume abbreviation}
#'     \item{\code{book_short_title}}{Book abbreviation}
#'     \item{\code{volume_lds_url}}{Volume abbreviation used at scriptures.lds.org}
#'     \item{\code{book_lds_url}}{Book abbreviation used at scriptures.lds.org}
#'     \item{\code{chapter_number}}{Chapter (not unique; Genesis 50 = 50, Exodus 1 = 1, etc.)}
#'     \item{\code{verse_number}}{Verse (not unique; Genesis 1:31 = 31, Genesis 2:1 = 1)}
#'     \item{\code{text}}{Scripture text}
#'     \item{\code{verse_title}}{Combined book, chapter, and verse (e.g. Genesis 1:1)}
#'     \item{\code{verse_short_title}}{Abbreviated combined book, chapter, and verse (e.g. Gen. 1:1)}
#'   }
#'
#' @return A data frame with 41995 rows and 19 columns
#'
#' @name lds_scriptures
#'
#' @examples
#' library(dplyr)
#'
#' lds_scriptures() %>%
#'   group_by(volume_title, book_title) %>%
#'   summarise(total_verses = n())
#'
#' @export
lds_scriptures <- function() {
  ret <- rbind(scriptuRs::old_testament,
               scriptuRs::new_testament,
               scriptuRs::book_of_mormon,
               scriptuRs::doctrine_and_covenants,
               scriptuRs::pearl_of_great_price)

  structure(ret, class = c("tbl_df", "tbl", "data.frame"))
}
