terraform {
  backend "s3" {
    bucket = "terraform-state"
    key = "prod.tfstate"
    region = "ap-south-1"
    dynamodb_table = "terraform-lock"
  }
}