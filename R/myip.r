#' Wrapper function for getting your IP address
#'
#' @param select if \code{random} a random service will be
#'    chosen to determine your external IP address. If
#'    \code{all} is used then every service will be checked
#'    (NOTE this can take a while). Otherwise, the selected
#'    service will be used.
#' @return a \code{list} classed as \code{myip} with two
#'     slots (\code{ipv4} & \code{ipv6}) which will
#'     \code{NULL} if the value was not returned from the
#'     service(s). If \code{all} was used, then a list of lists
#' @export
myip <- function(select=c("random", "all", "akamai",
                          "amazon", "httpbin", "icanhazip",
                          "ipecho", "ipinfo", "opendns")) {

  svcs <- c("akamai", "amazon", "httpbin", "icanhazip",
            "ipecho", "ipinfo", "opendns")

  choice <- match.arg(select, c("random", "all", svcs))

  if (choice == "random") {
    svc <- sample(svcs, 1)
    message(sprintf("Using %s...", svc))
    return(match.fun(svc)())
  }

  if (choice == "all") {
    return(lapply(svcs, function(x) {
      res <- match.fun(x)()
      attr(res, "service") <- x
      res
    }))
  }

  return(match.fun())

}

#' @rdname myip
#' @export
ip_external <- myip
