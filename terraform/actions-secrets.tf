# data "github_repository" "eks_repo" {
#   full_name = "marOne-mrri/learn-terraform-provision-eks-cluster"
# }

# data "aws_secretsmanager_secret" "github_actions" {
#   arn = "arn:aws:secretsmanager:us-east-1:359722584366:secret:github/user-cCnUwO"
# }

# data "aws_secretsmanager_secret_version" "github_actions" {
#   secret_id = data.aws_secretsmanager_secret.github_actions.id
# }

# resource "github_actions_secret" "ecr_url_secret" {
#   repository       = data.github_repository.eks_repo.name
#   secret_name      = "AWS_REGISTRY_URL"
#   plaintext_value  = jsondecode(data.aws_secretsmanager_secret_version.github_actions.secret_string)["AWS_REGISTRY_URL"]
# }

# resource "github_actions_secret" "access_key_secret" {
#   repository       = data.github_repository.eks_repo.name
#   secret_name      = "AWS_ACCESS_KEY_ID"
#   encrypted_value  = jsondecode(data.aws_secretsmanager_secret_version.github_actions.secret_string)["AWS_ACCESS_KEY_ID"]
# }

# resource "github_actions_secret" "secret_key_secret" {
#   repository       = data.github_repository.eks_repo.name
#   secret_name      = "AWS_SECRET_ACCESS_KEY"
#   encrypted_value  = jsondecode(data.aws_secretsmanager_secret_version.github_actions.secret_string)["AWS_SECRET_ACCESS_KEY"]
# }

# output "name" {
#   value = jsondecode(data.aws_secretsmanager_secret_version.github_actions.secret_string)["AWS_REGISTRY_URL"]
#   sensitive = true
# }