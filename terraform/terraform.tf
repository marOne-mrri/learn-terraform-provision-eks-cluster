terraform {
  backend "s3" {
    bucket         = "terraform-state-bucket-presentation-demo"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "state-locks-for-terraform-for-presentation-demo"
    encrypt        = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.15.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3.1.0"
    }

    tls = {
      source  = "hashicorp/tls"
      version = "~> 3.4.0"
    }

    cloudinit = {
      source  = "hashicorp/cloudinit"
      version = "~> 2.2.0"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.12.1"
    }

    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }

  required_version = "~> 1.3"
}

provider "github" {
  token = "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"
}