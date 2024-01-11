# terraform-bitbucket-ips

<!-- BEGIN_TF_DOCS -->
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

#### Providers

| Name | Version |
|------|---------|
| <a name="provider_http"></a> [http](#provider_http) | 3.4.1 |

#### Modules

No modules.

#### Inputs

| Name | Description | Type |
|------|-------------|------|
| <a name="input_direction"></a> [direction](#input_direction) | Select egress or ingress | `string` |
| <a name="input_product"></a> [product](#input_product) | Select atlassian product, default is bitbucket | `string` |
| <a name="input_region"></a> [region](#input_region) | Get a list form specific region, default 'eu-central-1' | `string` |

#### Outputs

| Name | Description |
|------|-------------|
| <a name="output_ip4_ranges"></a> [ip4_ranges](#output_ip4_ranges) | <pre>ip4_ranges = tolist([<br>  "3.69.198.0/26",<br>  "18.184.99.128/25",<br>  "18.184.99.224/28",<br>  "185.166.140.0/22",<br>  "185.166.143.0/24",<br>  "185.166.143.240/28",<br>])</pre> |
| <a name="output_ip6_ranges"></a> [ip6_ranges](#output_ip6_ranges) | n/a |
| <a name="output_ip_all_ranges"></a> [ip_all_ranges](#output_ip_all_ranges) | Full list of all ip addresses, this includes ipv4 and ipv6 addresses and both directions `ingress` and `egress`<pre>ip_all_ranges = tolist([<br>  "3.26.128.128/26",<br>  "3.69.198.0/26",<br>  "3.101.177.128/26",<br>  "3.251.213.64/26",<br>  "13.52.5.0/25",<br>  "13.52.5.96/28",<br>  ...<br>  "2401:1d80:3210:5::/64",<br>  "2401:1d80:3214:3::/64",<br>  "2401:1d80:3214:4::/64",<br>  "2401:1d80:3214:5::/64",<br>  "2401:1d80:3218::/64",<br>  "2401:1d80:3218:2::/64",<br>  "2401:1d80:3218:5::/64",<br>  "2401:1d80:321c:3::/64",<br>  "2401:1d80:321c:4::/64",<br>])</pre> |
| <a name="output_items"></a> [items](#output_items) | All items from http response body. |

## Maintainer

| Name | Company | Contact            |
|------|---------|--------------------|
| Dirk Piethan | Centrias Colocation GmbH | dirk@centrias.de   |
| Christiab Weirich | Centrias Colocation | christian@centrias.de |

### Support

| Name    | Company | Contact            |
|---------|---------|--------------------|
| Support | Centrias Colocation GmbH | support@centrias.net   |
<!-- END_TF_DOCS -->
