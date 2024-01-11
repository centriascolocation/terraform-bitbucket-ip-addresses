data "http" "bitbucket_ips" {
  url = "https://ip-ranges.atlassian.com/"

  request_headers = {
    "Accept" = "application/json"
  }
}

locals {
  result = jsondecode(data.http.bitbucket_ips.response_body)

  items = local.result.items
  ip_all_ranges = compact([
    for item in local.items : item.cidr
  ])

  ip4_ranges = compact([
    for item in local.items : item.cidr if item.mask_len <= 32 && contains(item.region, var.region) && contains(item.product, var.product) && contains(item.direction, var.direction)
  ])

  ip6_ranges = compact([
    for item in local.items : item.cidr if item.mask_len >= 64 && contains(item.region, var.region) && contains(item.product, var.product) && contains(item.direction, var.direction)
  ])
}
