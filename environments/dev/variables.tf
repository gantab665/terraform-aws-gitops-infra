variable "project_name" {
  description = "Project name for resource tagging"
  type        = string
  default     = "terraform-aws-gitops-infra"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}
