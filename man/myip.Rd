% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/myip.r
\name{myip}
\alias{myip}
\alias{ip_external}
\title{Wrapper function for getting your IP address}
\usage{
myip(select = c("random", "all", "akamai", "amazon", "httpbin",
  "icanhazip", "ipecho", "ipinfo", "opendns"))

ip_external(select = c("random", "all", "akamai", "amazon", "httpbin",
  "icanhazip", "ipecho", "ipinfo", "opendns"))
}
\arguments{
\item{select}{if \code{random} a random service will be
chosen to determine your external IP address. If
\code{all} is used then every service will be checked
(NOTE this can take a while). Otherwise, the selected
service will be used.}
}
\value{
a \code{list} classed as \code{myip} with two
    slots (\code{ipv4} & \code{ipv6}) which will
    \code{NULL} if the value was not returned from the
    service(s). If \code{all} was used, then a list of lists
}
\description{
Wrapper function for getting your IP address
}
