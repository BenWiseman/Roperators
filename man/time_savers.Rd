% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/shorthand.R
\name{get_1st}
\alias{get_1st}
\alias{get_nth}
\alias{get_1st_word}
\alias{get_last_word}
\title{Little functions to replace common minor functions. useful in apply sttements}
\usage{
get_1st(x, type = "v")

get_nth(x, n, type = "v")

get_1st_word(x, type = "v", split = " ")

get_last_word(x, type = "v", split = " ")
}
\arguments{
\item{x}{an R object, usually a character vector}

\item{type}{'v' (default) for vector x[1]; 'l' for list x[[1]]}

\item{n}{integer, the nth element to select}

\item{split}{character that seperated words. Default = ' '}
}
\description{
Little functions to replace common minor functions. useful in apply sttements
}
\examples{
unlist(lapply(strsplit(rownames(mtcars), ' '), get_1st))
#[1] "Mazda"    "Mazda"    "Datsun"   "Hornet"   "Hornet"   "Valiant"  "Duster"   "Merc"     "Merc"     "Merc"     "Merc"     "Merc"
#[13] "Merc"     "Merc"     "Cadillac" "Lincoln"  "Chrysler" "Fiat"     "Honda"    "Toyota"   "Toyota"   "Dodge"    "AMC"      "Camaro"
#[25] "Pontiac"  "Fiat"     "Porsche"  "Lotus"    "Ford"     "Ferrari"  "Maserati" "Volvo"

unlist(lapply(strsplit(rownames(mtcars), ' '), get_nth, 2))
#[1] "RX4"         "RX4"         "710"         "4"           "Sportabout"  NA            "360"         "240D"        "230"
#[10] "280"         "280C"        "450SE"       "450SL"       "450SLC"      "Fleetwood"   "Continental" "Imperial"    "128"
#[19] "Civic"       "Corolla"     "Corona"      "Challenger"  "Javelin"     "Z28"         "Firebird"    "X1-9"        "914-2"
#[28] "Europa"      "Pantera"     "Dino"        "Bora"        "142E"

# OR if you just want to pull a simple string apart (e.g. someone's full name):

get_1st_word(rownames(mtcars))
#[1] "Mazda"    "Mazda"    "Datsun"   "Hornet"   "Hornet"   "Valiant"  "Duster"   "Merc"     "Merc"     "Merc"     "Merc"     "Merc"
#[13] "Merc"     "Merc"     "Cadillac" "Lincoln"  "Chrysler" "Fiat"     "Honda"    "Toyota"   "Toyota"   "Dodge"    "AMC"      "Camaro"
#[25] "Pontiac"  "Fiat"     "Porsche"  "Lotus"    "Ford"     "Ferrari"  "Maserati" "Volvo"

get_last_word(rownames(mtcars))
#[1] "RX4"         "Wag"         "710"         "Drive"       "Sportabout"  "Valiant"     "360"         "240D"        "230"
#[10] "280"         "280C"        "450SE"       "450SL"       "450SLC"      "Fleetwood"   "Continental" "Imperial"    "128"
#[19] "Civic"       "Corolla"     "Corona"      "Challenger"  "Javelin"     "Z28"         "Firebird"    "X1-9"        "914-2"
#[28] "Europa"      "L"           "Dino"        "Bora"        "142E"

}
