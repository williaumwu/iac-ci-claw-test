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

variable "infracost_api_key" {
  description = "Infracost API key"
  type        = string
  sensitive   = true
}
