variable "region" {
  default = "us-west-2"
}

provider "aws" {
  region = "${var.region}"
}

variable "domain" {
  default = "theincredibleediblechestnut.com"
}

data "aws_caller_identity" "current" {}

terraform {
  backend "s3" {
    bucket               = "vrtlmdn-terraform-state"
    key                  = "the-incredible-edible-chestnut-com"
    region               = "us-west-2"
  }
}
