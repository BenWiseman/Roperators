#' Operating system checks
#'
#' @description
#' Determine the current operating system as well as provide flags to indicate
#' whether the operating system is a Mac/Windows/Linux.
#'
#' @examples
#' # determine operating system
#' get_os()
#'
#' # do we have a particular operating system
#' is.os_mac()
#' is.os_win()
#' is.os_lnx()
#' is.os_unx()
#'
#' @name os
NULL

#' @rdname os
#' @export
get_os <- function(){

  # pull out the original OS
  os <- tolower(Sys.info()["sysname"])

  # if we do not have an os to pull, pull from .Platform/R.version
  if(is.null(os)){
    os     <- tolower(.Platform$OS.type)
    os_ver <- tolower(R.version$os)

    # be more specific if OS is unix and we have additional info
    if(grepl("^darwin", os_ver)){
      os   <- "darwin"
    } else if(grepl("^linux", os_ver)){
      os   <- "linux"
    }
  }

  # flag os and return
  if(os %in% "windows"){
    return("win")
  } else if(os %in% "darwin"){
    return("mac")
  } else if(os %in% "linux"){
    return("linux")
  } else if(os %in% "unix"){
    return("unix")
  } else{
    return(os)
  }
}

#' @rdname os
#' @export
is.os_mac <- function(){
  get_os() == "mac"
}

#' @rdname os
#' @export
is.os_win <- function(){
  get_os() == "win"
}

#' @rdname os
#' @export
is.os_lnx <- function(){
  get_os() == "linux"
}

#' @rdname os
#' @export
is.os_unx <- function(){
  (get_os() == "unix") || is.os_lnx() || is.os_mac()
}