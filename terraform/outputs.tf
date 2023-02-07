output "cluster_id" {
  description = "EKS cluster ID"
  value       = module.eks.cluster_id
}

output "cluster_endpoint" {
  description = "Endpoint for EKS control plane"
  value       = module.eks.cluster_endpoint
}

output "cluster_security_group_id" {
  description = "Security group ids attached to the cluster control plane"
  value       = module.eks.cluster_security_group_id
}

output "region" {
  description = "AWS region"
  value       = var.region
}

output "cluster_name" {
  description = "Kubernetes Cluster Name"
  value       = local.cluster_name
}

output "image_registry_frontend" {
  description = "the ECR repo frontend url"
  value       = aws_ecr_repository.frontend.repository_url
}

output "image_registry_backend" {
  description = "the ECR repo backend url"
  value       = aws_ecr_repository.backend.repository_url
}
