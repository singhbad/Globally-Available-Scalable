terraform {
  backend "s3" {
    bucket = "singhbad"
    key    = "terraform/bhutan/terraform.tfstate"
    region = "us-east-1"
  }
}