variable "project_name" {
  description = "Name of the CodeBuild project and prefix for related resources."
  type        = string
  default     = "iac-ci-claw-test"
}

variable "environment" {
  description = "Deployment environment label used for tagging."
  type        = string
  default     = "test"
}

variable "build_timeout" {
  description = "Build timeout in minutes."
  type        = number
  default     = 15
}

variable "queued_timeout" {
  description = "Queued timeout in minutes."
  type        = number
  default     = 30
}
