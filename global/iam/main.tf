provider "aws" {
  region = "us-east-2"
}

module "global_iam" {
  #source = "github.com/alexshinningsun/terraform-ch5//modules/global/iam?ref=v1.0.2"
  source = "../../modules/global/iam"
  for_each = toset(var.user_names)
  user_name = each.value
  cloudwatch_full_access_for_neo = true
  #cluster_name           = ""
}