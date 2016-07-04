
<!-- README.md is generated from README.Rmd. Please edit that file -->
`myip`: Tools to Determine Your Public 'IP' Address(es)

It is often necessary to know the 'IPv4' and/or 'IPv6' external addresses of a workstation for 'API' calls. Functions are provided to use one or more external services to accomplish this task along with a wrapper function that can return results from multiple services or use a random service.

The following functions are implemented:

-   `akamai`: Use whatismyip.akamai.com to retrieve public IP address
-   `amazon`: Use checkip.amazonaws.com to retrieve public IP address
-   `httpbin`: Use httpbin.org to retrieve public IP address
-   `icanhazip`: Use icanhazip to retrieve public IP address
-   `ifcfgme`: Use ifcfg.me to retrieve public IP address
-   `ipecho`: Use ipecho.net/plain to retrieve public IP address
-   `ipinfo`: Use ipinfo.io/ip to retrieve public IP address
-   `myip`: Wrapper function for getting your IP address
-   `opendns`: Use checkip.dyndns.org to retrieve public IP address
-   `shuffit`: Use shtuff.it/myip/short retrieve public IP address

### Installation

``` r
devtools::install_github("hrbrmstr/myip")
```

### Usage

``` r
library(myip)

# current verison
packageVersion("myip")
#> [1] '0.1.0.9000'

akamai()
#> Public IPv4 Address: 50.252.233.22

httpbin()
#> Public IPv4 Address: 50.252.233.22
```

### Test Results

``` r
library(myip)
library(testthat)

date()
#> [1] "Mon Jul  4 18:10:36 2016"

test_dir("tests/")
#> testthat results ========================================================================================================
#> OK: 0 SKIPPED: 0 FAILED: 0
#> 
#> DONE ===================================================================================================================
```

### Code of Conduct

Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.md). By participating in this project you agree to abide by its terms.
