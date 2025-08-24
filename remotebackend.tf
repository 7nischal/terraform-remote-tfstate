//terraform remote backend
terraform {
  backend "s3" {
    bucket = "Enter-your-s3-bucket-name"
    key    = "production.tfstate"
    region = "us-east-1"
    use_lockfile = "true"
  }
}

//state locking
resource "time_sleep" "wait_100_seconds" {
  create_duration = "100s"
}