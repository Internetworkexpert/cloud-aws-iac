terraform {
  backend "s3" {
    key            = "finance/front-end-systems/terraform.tfstate"
    region         = "us-east-1"
    bucket         = "myterraform-state-20220601"
    dynamodb_table = "terraform_lock_table"
    encrypt        = true
  }
}
