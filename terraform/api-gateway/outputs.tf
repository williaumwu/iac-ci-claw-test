output "api_endpoint" {
  description = "The default endpoint URL of the HTTP API Gateway."
  value       = aws_apigatewayv2_stage.default.invoke_url
}

output "api_id" {
  description = "The ID of the HTTP API Gateway."
  value       = aws_apigatewayv2_api.this.id
}

output "lambda_function_name" {
  description = "The name of the deployed Lambda function."
  value       = aws_lambda_function.this.function_name
}
