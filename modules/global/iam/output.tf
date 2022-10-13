output "all_arn" {
  value=aws_iam_user.example[*].arn
  description = "arn of all user"
}