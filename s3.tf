
terraform {
  backend "s3" {
    bucket = "kitsproject-1"
    key    = "project-1/terraform.tfstate"
    region = "eu-west-2"
  }
}

