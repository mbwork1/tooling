terraform {
  required_version = ">=0.12.0"
  backend "s3" {
    key            = "tooling/terraform.state"
    bucket         = "west-eks-tfstate"
    region         = "us-west-2"
    dynamodb_table = "terraform-state-lock-table"
  }
}
