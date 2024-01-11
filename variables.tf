variable "region" {
  description = "Get a list form specific region"
  type        = string
  default     = ""
  validation {
    error_message = "You need a region"
    condition = contains(
      [
        "af-south-1",
        "ap-east-1",
        "ap-northeast-1",
        "ap-northeast-2",
        "ap-northeast-3",
        "ap-south-1",
        "ap-south-2",
        "ap-southeast-1",
        "ap-southeast-2",
        "ap-southeast-3",
        "ap-southeast-4",
        "ca-central-1",
        "ca-west-1",
        "eu-central-1",
        "eu-central-2",
        "eu-north-1",
        "eu-south-1",
        "eu-south-2",
        "eu-west-1",
        "eu-west-2",
        "eu-west-3",
        "il-central-1",
        "me-central-1",
        "me-south-1",
        "sa-east-1",
        "us-east-1",
        "us-east-2",
        "us-west-1",
        "us-west-2",
      ], var.region
    )
  }
}

variable "product" {
  description = "Select atlassian product, default is bitbucket"
  default     = "bitbucket"
  type        = string
  validation {
    error_message = "Err: Please select a atlassian product!"
    condition = contains(
      [
        "confluence",
        "jira",
        "bitbucket",
        "opsgenie",
        "statuspage",
        "halp",
        "trello",
      ],
      var.product
    )
  }
}

variable "direction" {
  description = "Select egress or ingress"
  type        = string
  default     = "egress"
  validation {
    error_message = "Err: Only ingress or egress allowed"
    condition     = contains(["ingress", "egress"], var.direction)
  }
}
