provider "aws" {
  region = "us-east-2"
}

module "global_iam" {
  #source = "github.com/alexshinningsun/terraform-ch5//modules/global/iam?ref=v1.0.2"
  source = "../../modules/global/iam"
  user_names=["momo", "twice", "IU","Alex"]
  #cluster_name           = ""
}