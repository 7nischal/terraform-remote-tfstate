

resource "aws_security_group" "example" {
  name        = "example"
  description = "Example security group"
}

# resource "local_file" "foo" {
#   content  = "Hello, World!"
#   filename = "${path.module}/foo.txt"
# }

resource "aws_security_group" "example2" {
  name        = "example2"
  description = "Example security group 2"
}