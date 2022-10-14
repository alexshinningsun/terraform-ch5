
/* resource "aws_iam_user" "ch5_task1" {
  count = length(var.user_names)
  name  = var.user_names[count.index] 
} 
*/
resource "aws_iam_user" "ch5_task2" {
  name = var.user_name
} 