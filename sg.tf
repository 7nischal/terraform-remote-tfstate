

resource "aws_security_group" "example" {
  name        = "example"
  description = "Example security group"
}

resource "local_file" "foo" {
  content  = "Hello, World!"
  filename = "${path.module}/foo.txt"
}

//setting up two workspaces dev and prod with different instance types

locals {
  instance_type = {
    default = "t2.nano"
    dev     = "t2.micro"
    prod    = "t2.small"
  }
}

resource "aws_instance" "myec2" {
  ami           = "ami-08a0d1e16fc3f61ea"
  instance_type = local.instance_type[terraform.workspace]
}

// using terraform import function

resource "aws_s3_bucket" "mybucket" {
  
}

// using data-source to fetch ami of ec2 instance

# provider "aws" {
#   region = "ap-south-1"
# }

data "aws_ami" "myimage" {
  most_recent = true
  owners      = ["amazon"]

  filter{
     name = "name"
      values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }
}

resource "aws_instance" "myec4" {
  ami           = data.aws_ami.myimage.id
  instance_type = "t2.micro"
}