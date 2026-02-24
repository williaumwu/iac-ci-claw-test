variable "bucket_prefix" {
  description = "Prefix for the S3 bucket name. A random suffix is appended automatically."
  type        = string
  default     = "iac-ci-claw-test"
}
