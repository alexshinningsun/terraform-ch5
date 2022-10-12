terraform {
  backend "iam" {
    key            = "global/iam/terraform.tfstate"
  }
}