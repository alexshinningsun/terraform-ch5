terraform {
  backend "s3" {
    #key = "global/s3/terraform.tfstate"
    key            = "workspaces-example/terraform.tfstate"
  }
}
