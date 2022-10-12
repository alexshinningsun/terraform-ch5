provider "aws" {
  region = "us-east-2"
}

module "global_iam" {
  source = "github.com/alexshinningsun/terraform-ch5/modules//global/iam?ref=v1.0.0"

  #cluster_name           = ""
}