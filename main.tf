provider "aws" {
    region = "us-east-1"
    access_key = ""
    secret_key = ""
  
}

 terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.3.0"
    }
  }

  required_version = ">= 0.14.9"
}
variable "project_tags" {
  type        = map(string)
  description = "Tags used for aws tutorial"
  default = {
    project = "aws-terraform-test"
  }
}

variable "public_ip" {
  type        = string
  description = "Your public IP goes here"
  default     = "192.168.0.0/24"

}

data "aws_availability_zones" "available" {}