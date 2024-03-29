terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "MyAWSorg"

    workspaces {
      name = "my-aws-app"
    }
  }
  required_version = ">=1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "> 5.0"
    }
    http = {
      source  = "hashicorp/http"
      version = "3.4.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.5.1"
    }
    local = {
      source  = "hashicorp/local"
      version = "2.4.0"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "4.0.4"
    }
  }
}