variable "project_name" {
  description = "Name of the project, used for resource naming and tagging."
  type        = string
  default     = "iac-ci-claw-test"
}

variable "environment" {
  description = "Deployment environment (e.g. test, staging, production)."
  type        = string
  default     = "test"
}

variable "lambda_function_name" {
  description = "Name of the Lambda function."
  type        = string
  default     = "iac-ci-claw-test-hello"
}

variable "lambda_runtime" {
  description = "Lambda runtime identifier."
  type        = string
  default     = "python3.12"
}

variable "lambda_timeout" {
  description = "Lambda function timeout in seconds."
  type        = number
  default     = 10
}

variable "lambda_memory_size" {
  description = "Lambda function memory size in MB."
  type        = number
  default     = 128
}

variable "api_name" {
  description = "Name of the HTTP API Gateway."
  type        = string
  default     = "iac-ci-claw-test-api"
}

variable "stage_name" {
  description = "Name of the API Gateway stage."
  type        = string
  default     = "$default"
}

variable "tags" {
  description = "Additional tags to apply to all taggable resources."
  type        = map(string)
  default     = {}
}
