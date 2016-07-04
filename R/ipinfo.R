#' Use ipinfo.io/ip to retrieve public IP address
#'
#' @importFrom httr GET content
#' @export
ipinfo <- function() {

  req <- httr::GET("http://ipinfo.io/ip")

  res <- trimws.int(httr::content(req, as="text", encoding="UTF-8"))

  ret <- list(ipv4=ipv4(res), ipv6=ipv6(res))
  class(ret) <- c("myip", class(ret))

  return(ret)

}

