#' Use ipecho.net/plain to retrieve public IP address
#'
#' @importFrom httr GET content
#' @export
ipecho <- function() {

  req <- httr::GET("http://ipecho.net/plain")

  res <- trimws.int(httr::content(req, as="text", encoding="UTF-8"))

  ret <- list(ipv4=ipv4(res), ipv6=ipv6(res))
  class(ret) <- c("myip", class(ret))

  return(ret)

}
