terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }

  required_version = ">= 1.0"
}

provider "local" {}

resource "local_file" "devops_file" {
  filename = "${path.module}/devops.txt"

  content = <<-EOT
    Project Name: ${var.project_name}
    Environment: ${var.environment}

    Terraform Practical
    Infrastructure as Code
  EOT
}
