#' Use httpbin.org to retrieve public IP address
#'
#' @importFrom httr GET content
#' @importFrom jsonlite fromJSON
#' @export
httpbin <- function() {

  req <- httr::GET("http://httpbin.org/ip")

  res <- httr::content(req, as="text", encoding="UTF-8")
  res <- jsonlite::fromJSON(res)

  ret <- list(ipv4=ipv4(res$origin), ipv6=ipv6(res$origin))
  class(ret) <- c("myip", class(ret))

  return(ret)

}
