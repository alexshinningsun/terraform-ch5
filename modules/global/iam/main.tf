
/* resource "aws_iam_user" "ch5_task1" {
  count = length(var.user_names)
  name  = var.user_names[count.index] 
} 
*/
resource "aws_iam_user" "ch5_task2" {
  name = var.user_name
} 

// Task 5: If-else-statements with the count parameter: E.G. only read access or both read and write access
data "aws_iam_policy_document" "cloudwatch_read_only" { // part1: cloudwatch read-only
  statement {
    effect    = "Allow"
    actions   = [
      "cloudwatch:Describe*",
      "cloudwatch:Get*",
      "cloudwatch:List*"
    ]
    resources = ["*"]
  }
}

resource "aws_iam_policy" "cloudwatch_read_only" {
  name="cloudwatch_read_only_for_${aws_iam_user.ch5_task2.name}"
  policy = data.aws_iam_policy_document.cloudwatch_read_only.json
}

resource "aws_iam_user_policy_attachment" "cloudwatch_read_only" {
  count = var.cloudwatch_full_access_for_neo ? 0 : 1
  user = aws_iam_user.ch5_task2.name
  policy_arn = aws_iam_policy.cloudwatch_read_only.arn
}

data "aws_iam_policy_document" "cloudwatch_full_access" { // part 2: cloudwatch full access
  statement {
    effect = "Allow"
    actions = ["*"]
    resources = ["*"]
  }
}
resource "aws_iam_policy" "cloudwatch_full_access" {
  name = "cloudwatch_full_access_for_${aws_iam_user.ch5_task2.name}"
  policy = data.aws_iam_policy_document.cloudwatch_full_access.json
}

resource "aws_iam_user_policy_attachment" "cloudwatch_full_access" {
  count = var.cloudwatch_full_access_for_neo ? 1 : 0
  user = aws_iam_user.ch5_task2.name
  policy_arn = aws_iam_policy.cloudwatch_full_access.arn
}
// ==== END Task 5: If-else-statements with the count parameter =========
