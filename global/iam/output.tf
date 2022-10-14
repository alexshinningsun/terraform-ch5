output "global_iam_output_arns" {
  value       = values(module.global_iam)[*].all_user.arn
  description = "Global IAM output variables"
}


output "global_iam_output" {
  value       = module.global_iam
  description = "Global IAM output variables"
}
