###########################################
# AWS Provider
###########################################

provider "aws" {
  region  = "${var.region}"
}

###########################################
# Ansible Provider
###########################################

terraform {
  required_providers {
    ansible = {
      source = "nbering/ansible"
      version = "1.0.4"
    }
  }
}
provider "ansible" {}
