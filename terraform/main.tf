#Define a provider
terraform {
  required_providers {
    linode = {
      source  = "linode/linode"
      version = "1.14.3"
    }
  }
}

variable "linode_token" {}
variable "linode_password" {}

provider "linode" {
  # Configuration options
  token = var.linode_token
}

resource "linode_instance" "instance1" {
  label     = "ansible"
  image     = "linode/ubuntu20.04"
  region    = "us-east"
  type      = "g6-nanode-1"
  root_pass = var.linode_password
}

