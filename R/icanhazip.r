#' Use icanhazip to retrieve public IP address
#'
#' This service can return both IPv4 and IPv6 addresses
#' and also operates over \code{https}.
#'
#' @importFrom httr GET content
#' @export
icanhazip <- function() {

  req4 <- httr::GET("https://ipv4.icanhazip.com/")
  res4 <- trimws.int(httr::content(req4, as="text", encoding="UTF-8"))
  ret <- list(ipv4 = ipv4(res4))

  req6 <- try(httr::GET("https://ipv6.icanhazip.com/"), silent = TRUE)
  if (!inherits(req6, "try-error")) {
    res6 <- trimws.int(httr::content(req6, as="text", encoding="UTF-8"))
    ret[["ipv6"]] <-  ipv6(res6)
  }

  class(ret) <- c("myip", class(ret))

  return(ret)

}


