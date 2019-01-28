# Use ifcfg.me to retrieve public IP address
#
# This service can return both IPv4 and IPv6 addresses
# and also operates over \code{https}.
#
# @importFrom httr GET content
# @export
#ifcfgme <- function() {
#
#  req4 <- httr::GET("https://4.ifcfg.me/ip")
#  req6 <- httr::GET("https://6.ifcfg.me/ip")
#
#  res4 <- trimws.int(httr::content(req4, as="text", encoding="UTF-8"))
#  res6 <- trimws.int(httr::content(req6, as="text", encoding="UTF-8"))
#
#  ret <- list(ipv4=ipv4(res4), ipv6=ipv6(res6))
#  class(ret) <- c("myip", class(ret))
#
#  return(ret)
#
#}
#
#




