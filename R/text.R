#' The Standard Works of The Church of Jesus Christ of Latter-day Saints
#'
#' This package contains the complete text of the Standard Works of The Church
#' of Jesus Christ of Latter-day Saints (LDS), including the King James Bible
#' (Old and New Testaments), the Book of Mormon, the Doctrine and Covenants, and
#' the Pearl of Great Price, formatted to be convenient for text analysis.
#' @docType package
#' @name scriptuRs
#' @aliases scriptuRs scriptuRs-package
NULL

#' The text of the Old Testament (King James Version)
#'
#' A dataset containing the text of the King James Version of the Old Testament.
#'
#' Excludes the following:
#' \itemize{
#'   \item Epistle Dedicatory
#' }
#'
#' @source \url{http://scriptures.nephi.org/}
#' @format A data frame with 23145 rows and 19 columns:
#' \describe{
#'   \item{\code{volume_id}}{Unique id number for the volume}
#'   \item{\code{book_id}}{Unique id number for the book}
#'   \item{\code{chapter_id}}{Unique id number for the chapter}
#'   \item{\code{verse_id}}{Unique id number for the verse}
#'   \item{\code{volume_title}}{Name of the volume}
#'   \item{\code{book_title}}{Name of the book}
#'   \item{\code{volume_long_title}}{Full name of the volume}
#'   \item{\code{book_long_title}}{Full name of the book}
#'   \item{\code{volume_subtitle}}{Subtitle of the volume}
#'   \item{\code{book_subtitle}}{Subtitle of the book}
#'   \item{\code{volume_short_title}}{Volume abbreviation}
#'   \item{\code{book_short_title}}{Book abbreviation}
#'   \item{\code{volume_lds_url}}{Volume abbreviation used at scriptures.lds.org}
#'   \item{\code{book_lds_url}}{Book abbreviation used at scriptures.lds.org}
#'   \item{\code{chapter_number}}{Chapter}
#'   \item{\code{verse_number}}{Verse}
#'   \item{\code{text}}{Scripture text}
#'   \item{\code{verse_title}}{Combined book, chapter, and verse (e.g. Genesis 1:1)}
#'   \item{\code{verse_short_title}}{Abbreviated combined book, chapter, and verse (e.g. Gen. 1:1)}
#' }
"old_testament"

#' The text of the New Testament (King James Version)
#'
#' A dataset containing the text of the King James Version of the New Testament.
#'
#' @source \url{http://scriptures.nephi.org/}
#' @format A data frame with 7957 rows and 19 columns:
#' \describe{
#'   \item{\code{volume_id}}{Unique id number for the volume}
#'   \item{\code{book_id}}{Unique id number for the book}
#'   \item{\code{chapter_id}}{Unique id number for the chapter}
#'   \item{\code{verse_id}}{Unique id number for the verse}
#'   \item{\code{volume_title}}{Name of the volume}
#'   \item{\code{book_title}}{Name of the book}
#'   \item{\code{volume_long_title}}{Full name of the volume}
#'   \item{\code{book_long_title}}{Full name of the book}
#'   \item{\code{volume_subtitle}}{Subtitle of the volume}
#'   \item{\code{book_subtitle}}{Subtitle of the book}
#'   \item{\code{volume_short_title}}{Volume abbreviation}
#'   \item{\code{book_short_title}}{Book abbreviation}
#'   \item{\code{volume_lds_url}}{Volume abbreviation used at scriptures.lds.org}
#'   \item{\code{book_lds_url}}{Book abbreviation used at scriptures.lds.org}
#'   \item{\code{chapter_number}}{Chapter}
#'   \item{\code{verse_number}}{Verse}
#'   \item{\code{text}}{Scripture text}
#'   \item{\code{verse_title}}{Combined book, chapter, and verse (e.g. Matthew 1:1)}
#'   \item{\code{verse_short_title}}{Abbreviated combined book, chapter, and verse (e.g. Matt. 1:1)}
#' }
"new_testament"

#' The text of the Book of Mormon
#'
#' A dataset containing the text of the Book of Mormon.
#'
#' Excludes the following:
#' \itemize{
#'   \item Book of Mormon: Title Page (written by Moroni)
#'   \item Introduction
#'   \item The Testimony of the Three Witnesses
#'   \item The Testimony of Eight Witnesses
#'   \item Testimony of the Prophet Joseph Smith
#'   \item A Brief Explanation About the Book of Mormon
#' }
#'
#' @source \url{http://scriptures.nephi.org/}
#' @format A data frame with 6604 rows and 19 columns:
#' \describe{
#'   \item{\code{volume_id}}{Unique id number for the volume}
#'   \item{\code{book_id}}{Unique id number for the book}
#'   \item{\code{chapter_id}}{Unique id number for the chapter}
#'   \item{\code{verse_id}}{Unique id number for the verse}
#'   \item{\code{volume_title}}{Name of the volume}
#'   \item{\code{book_title}}{Name of the book}
#'   \item{\code{volume_long_title}}{Full name of the volume}
#'   \item{\code{book_long_title}}{Full name of the book}
#'   \item{\code{volume_subtitle}}{Subtitle of the volume}
#'   \item{\code{book_subtitle}}{Subtitle of the book}
#'   \item{\code{volume_short_title}}{Volume abbreviation}
#'   \item{\code{book_short_title}}{Book abbreviation}
#'   \item{\code{volume_lds_url}}{Volume abbreviation used at scriptures.lds.org}
#'   \item{\code{book_lds_url}}{Book abbreviation used at scriptures.lds.org}
#'   \item{\code{chapter_number}}{Chapter}
#'   \item{\code{verse_number}}{Verse}
#'   \item{\code{text}}{Scripture text}
#'   \item{\code{verse_title}}{Combined book, chapter, and verse (e.g. 1 Nephi 1:1)}
#'   \item{\code{verse_short_title}}{Abbreviated combined book, chapter, and verse (e.g. 1 Ne. 1:1)}
#' }
"book_of_mormon"

#' The text of the Doctrine and Covenants
#'
#' A dataset containing the text of the Doctrine and Covenants.
#'
#' Excludes the following:
#' \itemize{
#'   \item Official Declaration 1
#'   \item Official Declaration 2
#' }
#'
#' @source \url{http://scriptures.nephi.org/}
#' @format A data frame with 3654 rows and 19 columns:
#' \describe{
#'   \item{\code{volume_id}}{Unique id number for the volume}
#'   \item{\code{book_id}}{Unique id number for the book}
#'   \item{\code{chapter_id}}{Unique id number for the chapter}
#'   \item{\code{verse_id}}{Unique id number for the verse}
#'   \item{\code{volume_title}}{Name of the volume}
#'   \item{\code{book_title}}{Name of the book}
#'   \item{\code{volume_long_title}}{Full name of the volume}
#'   \item{\code{book_long_title}}{Full name of the book}
#'   \item{\code{volume_subtitle}}{Subtitle of the volume}
#'   \item{\code{book_subtitle}}{Subtitle of the book}
#'   \item{\code{volume_short_title}}{Volume abbreviation}
#'   \item{\code{book_short_title}}{Book abbreviation}
#'   \item{\code{volume_lds_url}}{Volume abbreviation used at scriptures.lds.org}
#'   \item{\code{book_lds_url}}{Book abbreviation used at scriptures.lds.org}
#'   \item{\code{chapter_number}}{Chapter}
#'   \item{\code{verse_number}}{Verse}
#'   \item{\code{text}}{Scripture text}
#'   \item{\code{verse_title}}{Combined book, chapter, and verse (e.g. Doctrine and Covenants 1:1)}
#'   \item{\code{verse_short_title}}{Abbreviated combined book, chapter, and verse (e.g. D&C 1:1)}
#' }
"doctrine_and_covenants"

#' The text of the Pearl of Great Price
#'
#' A dataset containing the text of the Pearl of Great Price.
#'
#' Excludes the following:
#' \itemize{
#'   \item Introductory Note
#'   \item Oliver Cowdery's account
#' }
#'
#' @source \url{http://scriptures.nephi.org/}
#' @format A data frame with 635 rows and 19 columns:
#' \describe{
#'   \item{\code{volume_id}}{Unique id number for the volume}
#'   \item{\code{book_id}}{Unique id number for the book}
#'   \item{\code{chapter_id}}{Unique id number for the chapter}
#'   \item{\code{verse_id}}{Unique id number for the verse}
#'   \item{\code{volume_title}}{Name of the volume}
#'   \item{\code{book_title}}{Name of the book}
#'   \item{\code{volume_long_title}}{Full name of the volume}
#'   \item{\code{book_long_title}}{Full name of the book}
#'   \item{\code{volume_subtitle}}{Subtitle of the volume}
#'   \item{\code{book_subtitle}}{Subtitle of the book}
#'   \item{\code{volume_short_title}}{Volume abbreviation}
#'   \item{\code{book_short_title}}{Book abbreviation}
#'   \item{\code{volume_lds_url}}{Volume abbreviation used at scriptures.lds.org}
#'   \item{\code{book_lds_url}}{Book abbreviation used at scriptures.lds.org}
#'   \item{\code{chapter_number}}{Chapter}
#'   \item{\code{verse_number}}{Verse}
#'   \item{\code{text}}{Scripture text}
#'   \item{\code{verse_title}}{Combined book, chapter, and verse (e.g. Abraham 1:1)}
#'   \item{\code{verse_short_title}}{Abbreviated combined book, chapter, and verse (e.g. Abr. 1:1)}
#' }
"pearl_of_great_price"
