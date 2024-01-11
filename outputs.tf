output "items" {
  description = "All items from http response body."
  value       = local.items
}

output "ip_all_ranges" {
  description = <<EOF
Full list of all ip addresses, this includes ipv4 and ipv6 addresses and both directions `ingress` and `egress`
```
ip_all_ranges = tolist([
  "3.26.128.128/26",
  "3.69.198.0/26",
  "3.101.177.128/26",
  "3.251.213.64/26",
  "13.52.5.0/25",
  "13.52.5.96/28",
  ...
  "2401:1d80:3210:5::/64",
  "2401:1d80:3214:3::/64",
  "2401:1d80:3214:4::/64",
  "2401:1d80:3214:5::/64",
  "2401:1d80:3218::/64",
  "2401:1d80:3218:2::/64",
  "2401:1d80:3218:5::/64",
  "2401:1d80:321c:3::/64",
  "2401:1d80:321c:4::/64",
])
```


  EOF
  value       = local.ip_all_ranges
}

output "ip4_ranges" {
  description = <<EOF

```
ip4_ranges = tolist([
  "3.69.198.0/26",
  "18.184.99.128/25",
  "18.184.99.224/28",
  "185.166.140.0/22",
  "185.166.143.0/24",
  "185.166.143.240/28",
])

```
  EOF
  value       = local.ip4_ranges
}

output "ip6_ranges" {
  description = <<EOF
```
ip6_ranges = tolist([
  "2401:1d80:3210:5::/64",
  "2401:1d80:3214:3::/64",
  "2401:1d80:3214:4::/64",
  "2401:1d80:3214:5::/64",
  "2401:1d80:3218::/64",
  "2401:1d80:3218:2::/64",
  "2401:1d80:3218:5::/64",
  "2401:1d80:321c:3::/64",
  "2401:1d80:321c:4::/64",
])


EOF
  value       = local.ip6_ranges
}
