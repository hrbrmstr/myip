
<!-- README.md is generated from README.Rmd. Please edit that file -->

[![Travis-CI Build
Status](https://travis-ci.org/hrbrmstr/myip.svg?branch=master)](https://travis-ci.org/hrbrmstr/myip)
[![Coverage
Status](https://codecov.io/gh/hrbrmstr/myip/branch/master/graph/badge.svg)](https://codecov.io/gh/hrbrmstr/myip)
[![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/myip)](https://cran.r-project.org/package=myip)

# myip

Tools to Determine Your Public ‘IP’ Address(es)

## Description

It is often necessary to know the ‘IPv4’ and/or ‘IPv6’ external
addresses of a workstation for ‘API’ calls. Functions are provided to
use one or more external services to accomplish this task along with a
wrapper function that can return results from multiple services or use a
random service.

## What’s Inside The Tin?

The following functions are implemented:

  - `myip`/`ip_external`: Wrapper function for getting your IP address
  - `akamai`: Use whatismyip.akamai.com to retrieve public IP address
  - `amazon`: Use checkip.amazonaws.com to retrieve public IP address
  - `httpbin`: Use httpbin.org to retrieve public IP address
  - `icanhazip`: Use icanhazip to retrieve public IP address
  - `ipecho`: Use ipecho.net/plain to retrieve public IP address
  - `ipinfo`: Use ipinfo.io/ip to retrieve public IP address
  - `opendns`: Use checkip.dyndns.org to retrieve public IP address

## Installation

``` r
devtools::install_git("https://git.sr.ht/~hrbrmstr/myip")
# OR
devtools::install_git("https://gitlab.com/hrbrmstr/myip")
# OR
devtools::install_git("https://github.com/hrbrmstr/myip")
```

## Usage

``` r
library(myip)

# current verison
packageVersion("myip")
## [1] '0.2.0'

akamai()

httpbin()

myip("all")
## [[1]]
## (akamai) Public IPv4 Address: 174.62.167.97
## 
## [[2]]
## (amazon) Public IPv4 Address: 174.62.167.97
## 
## [[3]]
## (httpbin) Public IPv4 Address: 174.62.167.97
## 
## [[4]]
## (icanhazip) Public IPv4 Address: 174.62.167.97
## 
## [[5]]
## (ipecho) Public IPv4 Address: 174.62.167.97
## 
## [[6]]
## (ipinfo) Public IPv4 Address: 174.62.167.97
## 
## [[7]]
## (opendns) Public IPv4 Address: 174.62.167.97
```

## myip Metrics

| Lang | \# Files |  (%) | LoC |  (%) | Blank lines |  (%) | \# Lines |  (%) |
| :--- | -------: | ---: | --: | ---: | ----------: | ---: | -------: | ---: |
| R    |       14 | 0.93 | 106 | 0.86 |          66 | 0.75 |       98 | 0.72 |
| Rmd  |        1 | 0.07 |  17 | 0.14 |          22 | 0.25 |       38 | 0.28 |

## Code of Conduct

Please note that this project is released with a [Contributor Code of
Conduct](CONDUCT.md). By participating in this project you agree to
abide by its terms.
