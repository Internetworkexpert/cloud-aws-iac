terraform {
  backend "s3" {
    key            = "finance/front-end-systems/terraform.tfstate"
    region         = "us-east-1"
    bucket         = "terraform-state-2023-06-19"
    dynamodb_table = "terraformlocker"
    encrypt        = true
  }
}
