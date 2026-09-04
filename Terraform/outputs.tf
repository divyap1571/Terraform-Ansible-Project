output "project_name" {
  description = "Project name"
  value       = var.project_name
}

output "environment" {
  description = "Environment"
  value       = var.environment
}

output "created_file" {
  description = "Terraform created file"
  value       = local_file.devops_file.filename
}
