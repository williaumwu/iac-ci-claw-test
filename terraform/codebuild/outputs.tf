output "project_name" {
  description = "Name of the CodeBuild project."
  value       = aws_codebuild_project.this.name
}

output "project_arn" {
  description = "ARN of the CodeBuild project."
  value       = aws_codebuild_project.this.arn
}

output "artifacts_bucket" {
  description = "Name of the S3 bucket used for build artifacts."
  value       = aws_s3_bucket.artifacts.bucket
}
