terraform {
  backend "s3" {
    bucket         = "nischal-terraform-backend"
    key            = "terraform.tfstate"
    region        = "us-east-1"
  }
}

resource "aws_iam_user" "prod" {
  name = "nischal-user-01"
}

# resource "aws_security_group" "prod" {
#   name        = "terraform-firewall"
# }
