#' Use whatismyip.akamai.com to retrieve public IP address
#'
#' @importFrom httr GET content
#' @export
akamai <- function() {

  req <- httr::GET("http://whatismyip.akamai.com/")

  res <- trimws.int(httr::content(req, as="text", encoding="UTF-8"))

  ret <- list(ipv4=res, ipv6=NULL)
  class(ret) <- c("myip", class(ret))

  return(ret)

}



