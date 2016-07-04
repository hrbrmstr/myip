#' Use checkip.amazonaws.com to retrieve public IP address
#'
#' @importFrom httr GET content
#' @export
amazon <- function() {

  req <- httr::GET("http://checkip.amazonaws.com/")

  res <- trimws.int(httr::content(req, as="text", encoding="UTF-8"))

  ret <- list(ipv4=ipv4(res), ipv6=ipv6(res))
  class(ret) <- c("myip", class(ret))

  return(ret)

}

