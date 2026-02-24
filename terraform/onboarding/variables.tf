variable "github_token" {
  description = "GitHub personal access token for iac-ci"
  type        = string
  sensitive   = true
}

variable "github_owner" {
  description = "GitHub repository owner"
  type        = string
  default     = "williaumwu"
}
