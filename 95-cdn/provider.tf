terraform {
  required_providers {
    aws = {
        source = "hashicorp/was"
        version = "6.33.0"
    }
  }

  backend "s3" {
    bucket = "mk-devops-remote-state-2026"
    key = "roboshop-dev-cdn"
    region = "us-east-1"
    encrypt = true
    use_lockfile = true    
  }
}

provider "aws" {
    region ="us-east-1"  
}