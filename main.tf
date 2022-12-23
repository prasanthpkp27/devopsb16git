provider "aws" {
    region = "us-east-1"
}

terraform {
  required_version = "<= 1.3.14" #Forcing which version of Terraform needs to be used
  required_providers {
    aws = {
      version = "<= 5.0.0" #Forcing which version of plugin needs to be used.
      source = "hashicorp/aws"
    }
  }
}

resource "aws_vpc" "default" {
    cidr_block = "172.19.0.0/16"
    enable_dns_hostnames = true
    tags = {
        Name = "devopsB16git"
	Owner = "prasanthkpatti"
	environment = "development"
    }
}