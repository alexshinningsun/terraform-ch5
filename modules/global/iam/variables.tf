variable "user_name" {
  description="Create IAM users with these names"
  type=string
  default = "neo"
}

variable "cloudwatch_full_access_for_neo" {
  description = "if this variable is true, user should have full access on cloudwatch"
  type = bool
  default = false
}