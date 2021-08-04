terraform {
  required_version = ">= 0.12"
}

# aws 관련 기능을 가지고 있는 모듈
provider "aws" {
  region = var.aws_region
}

data "aws_availability_zones" "available" {
  exclude_names = ["ap-northeast-2b", "ap-northeast-2d"]
}

# 기본 http get 요청 기능을 가지고 있는 모듈
provider "http" {}
