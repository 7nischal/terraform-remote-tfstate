terraform { 
  cloud { 
    
    organization = "example_terraform" 

    workspaces { 
      name = "cli-driven" 
    } 
  } 
}

resource "time_sleep" "wait_5_seconds" {
  create_duration = "5s"
}

resource "aws_security_group" "example2" {
  name        = "example2"
  description = "Example security group 2"
}
resource "aws_security_group" "example3" {
  name        = "example3"
  description = "Example security group 3"
}