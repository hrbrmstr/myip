#' @export
print.myip <- function(x, ...) {
  if (length(x$ipv4>0)) cat(
    sprintf("(%s) Public IPv4 Address: %s\n", attr(x, "service"), x$ipv4)
  )
  if (length(x$ipv6>0)) cat(
    sprintf("(%s) Public IPv6 Address: %s\n", attr(x, "service"), x$ipv6)
  )
}

trimws.int <- function(x, which = c("both", "left", "right")) {
  which <- match.arg(which)
  mysub <- function(re, x) sub(re, "", x, perl = TRUE)
  if (which == "left")
    return(mysub("^[ \t\r\n]+", x))
  if (which == "right")
    return(mysub("[ \t\r\n]+$", x))
  mysub("[ \t\r\n]+$", mysub("^[ \t\r\n]+", x))
}

ipv4 <- function(x) { if (grepl(":", x)) return(NULL) else x }
ipv6 <- function(x) { if (grepl(":", x)) x else return(NULL) }
