provider "aws" {
  region = "us-east-1"
}

module "ec2" {
  source = "../childmodule"
}

resource "aws_eip" "this" {
  domain  = "vpc"
  instance = module.ec2.instance_id
}