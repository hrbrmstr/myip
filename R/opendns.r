#' Use checkip.dyndns.org to retrieve public IP address
#'
#' @importFrom httr GET content
#' @importFrom xml2 read_html xml_text
#' @export
opendns <- function() {

  req <- httr::GET("http://checkip.dyndns.org/")

  res <- httr::content(req, as="text", encoding="UTF-8")
  res <- xml2::read_html(res)
  res <- xml2::xml_text(res)
  res <- gsub("Current IP CheckCurrent IP Address: ", "", res)

  ret <- list(ipv4=ipv4(res), ipv6=ipv6(res))
  class(ret) <- c("myip", class(ret))

  return(ret)

}




