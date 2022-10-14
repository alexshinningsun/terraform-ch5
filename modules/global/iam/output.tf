/* output "all_arn" {
  value=values(aws_iam_user.ch5_task2)[*].arn
  description = "arn of all user"
}*/

output "all_user" {
  value=aws_iam_user.ch5_task2
  description = "all user info"
} 