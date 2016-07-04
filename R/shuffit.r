#' Use shtuff.it/myip/short retrieve public IP address
#'
#' @importFrom httr GET content
#' @export
shuffit <- function() {

  req <- httr::GET("http://shtuff.it/myip/short")

  res <- trimws.int(httr::content(req, as="text", encoding="UTF-8"))

  ret <- list(ipv4=ipv4(res), ipv6=ipv6(res))
  class(ret) <- c("myip", class(ret))

  return(ret)

}




