# Learn Terraform - Provision an EKS Cluster - Deploy to the EKS cluster a fullstack App

This project provides an example infrastructure as code (IaC) setup using Terraform, Docker, and Kubernetes to deploy a full-stack application. The Terraform code was forked from [hashicorp/learn-terraform-provision-eks-cluster](https://github.com/hashicorp/learn-terraform-provision-eks-cluster) and updated to meet my Requirements.

## Requirements

- Java
- Node.js
- Angular
- Terraform
- Docker
- Kubernetes

## Project Structure

The project is organized into the following directories:

- `backend/`: contains the backend code for the application.
- `frontend/`: contains the frontend code for the application.
- `k8s/`: contains the Kubernetes configuration files.
- `state/`: contains the Terraform state files.
- `terraform/`: contains the Terraform configuration files.

## Getting Started

To get started with this project, follow these steps:

1. Clone the repository to your local machine.
2. Navigate to the `terraform/` directory.
3. Run `terraform init` to initialize the Terraform modules.
4. Run `terraform apply` to deploy the infrastructure.
5. Navigate to the `k8s/` directory.
6. Run `kubectl apply -f .` to deploy the Kubernetes resources.

## Contributing

If you'd like to contribute to this project, please follow these steps:

1. Fork the repository.
2. Create a new branch for your changes.
3. Make your changes and commit them to your branch.
4. Push your branch to your forked repository.
5. Create a new pull request from your branch to the original repository.

## License

This project is licensed under the MIT License. See the `LICENSE` file for details.
