terraform {
  required_providers {
    aws = {
      version = ">=4.35.0"
    }
  }

  required_version = ">= 1.1.9"
}

provider "aws" {
  region = "us-east-1"
  alias = "Virginia"
}

provider "aws" {
  region = "us-east-2"
  alias = "Ohio"
}

