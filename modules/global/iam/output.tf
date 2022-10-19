/* output "all_arn" {
  value=values(aws_iam_user.ch5_task2)[*].arn
  description = "arn of all user"
}*/

output "all_user" {
  value=aws_iam_user.ch5_task2
  description = "all user info"
} 
// Basic one
output "neo_cloudwatch_policy_arn" {
  value = (var.cloudwatch_full_access_for_neo ? aws_iam_user_policy_attachment.cloudwatch_full_access[0].policy_arn : aws_iam_user_policy_attachment.cloudwatch_read_only[0].policy_arn)
}

//Advance one
output "neo_cloudwatch_policies_arn" {
  value = one(concat(
    aws_iam_user_policy_attachment.cloudwatch_full_access[*].policy_arn, aws_iam_user_policy_attachment.cloudwatch_read_only[*].policy_arn
  ))
}