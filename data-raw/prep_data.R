# This is the script used to download the scripture text files from
# scriptures.nephi.org and add them to the scriptuR package

library(readr)
library(dplyr)

scripture_url <- "http://scriptures.nephi.org/downloads/lds-scriptures.csv.zip"

# Temporary files/folders
tmp_scriptures_zipped <- tempfile()
tmp_scriptures_unzipped <- tempdir()

# Download and unzip data
download.file(url = scripture_url, tmp_scriptures_zipped, "auto")
unzip(tmp_scriptures_zipped, exdir = tmp_scriptures_unzipped)

# Read the scripture data and bump up guess_max because early volumes don't have
# subtitles and that messes up later books
scriptures_raw <- read_csv(file.path(tmp_scriptures_unzipped, "lds-scriptures.csv"),
                           guess_max = 25000) %>%
  rename(text = scripture_text) %>%
  as.data.frame()

# Get rid of temporary stuff
file.remove(tmp_scriptures_zipped)
file.remove(file.path(tmp_scriptures_unzipped, "lds-scriptures.csv"))


# Subset data -------------------------------------------------------------

old_testament <- scriptures_raw %>%
  filter(volume_title == "Old Testament")

new_testament <- scriptures_raw %>%
  filter(volume_title == "New Testament")

book_of_mormon <- scriptures_raw %>%
  filter(volume_title == "Book of Mormon")

doctrine_and_covenants <- scriptures_raw %>%
  filter(volume_title == "Doctrine and Covenants")

pearl_of_great_price <- scriptures_raw %>%
  filter(volume_title == "Pearl of Great Price")

# Add these data frames to the package
devtools::use_data(old_testament, overwrite = TRUE)
devtools::use_data(new_testament, overwrite = TRUE)
devtools::use_data(book_of_mormon, overwrite = TRUE)
devtools::use_data(doctrine_and_covenants, overwrite = TRUE)
devtools::use_data(pearl_of_great_price, overwrite = TRUE)
