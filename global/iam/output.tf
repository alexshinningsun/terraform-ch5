output "global_iam_output_arns" {
  value       = values(module.global_iam)[*].all_user.arn
  description = "Global IAM output variables"
}


output "global_iam_output" {
  value       = module.global_iam
  description = "Global IAM output variables"
}

// ============ Task 3: loops with expression
output "upper_names" {    // Task 3: loops with expression
  value = [for name in var.user_names : upper(name)]
}

output "short_upper_names"{
  value = [for name in var.user_names : upper(name) if length(name) < 5]
}

output "bios"{
  value = [for name, role in var.hero_thousand_faces : "${name} is the ${role}"]
}

output "heros"{
  value = {for name, role in var.hero_thousand_faces : "${name}" => "${role}"}
}
// ============ Task 3 END
// ============ Task 4: Loops with the for String Directive
output "for_directive" {
  value = "%{for name in var.user_names} ${name}, %{endfor}"
}

output "for_directive_index" {
  value = "%{for i, name in var.user_names}(${i}) ${name}, %{endfor}"
}
// ============ Task 4 END