## Terraform module for Bitbucket ips

This Terraform module queries the URL "https://ip-ranges.atlassian.com/" and filters the IPv4 and IPv6 ranges.

## usage

### github

```
module "bitbucket_ips" {
  source  = "github.com/centriascolocation/terraform-bitbucket-ips"

  region = "eu-central-1"
  direction = "egress"
  product = "bitbucket"
}
```
### terraform repository

```
module "bitbucket_ips" {
  source  = "centriascolocation/ip-addresses/bitbucket"
  version = "1.0.0"

  region = "eu-central-1"
  direction = "egress"
  product = "bitbucket"
}
```
