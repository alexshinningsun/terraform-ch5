provider "aws" {
  region = "us-east-2"
}

module "webserver_cluster" {
  source = "../../../modules/services/webserver-cluster"

  cluster_name           = "webservers-stage"
  db_remote_state_bucket = "terraform-up-and-running-state-collection"
  db_remote_state_key    = "stage/data-stores/mysql/terraform.tfstate"
  instance_type = "t2.micro"
  max_size = 4
  min_size = 1
  custom_tags = {
    "author" = "alex"
  }
  enable_autoscaling = true

  ami         = "ami-0fb653ca2d3203ac1"
  server_text = "New server text"
}



resource "aws_security_group_rule" "allow_testing_inbound" {
  type              = "ingress"
  security_group_id = module.webserver_cluster.alb_security_group_id

  from_port   = 12345
  to_port     = 12345
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
}
