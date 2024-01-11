terraform {
  required_version = ">= 0.12"

  required_providers {
    http = {
      source  = "hashicorp/http"
      version = ">= 3.4.1"
    }
  }
}
