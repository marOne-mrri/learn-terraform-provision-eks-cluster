resource "aws_iam_user" "github_actions" {
  name = "github-actions-user-eks-ecr"
}


resource "aws_iam_user_policy" "github_actions_ro" {
  name = "github-actions-policy-eks-ecr"
  user = aws_iam_user.github_actions.name

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = [
          "ecr:*"
        ],
        Effect   = "Allow",
        Resource = "*"
      }
    ]
  })
}
