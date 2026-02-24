output "webhook_url" {
  description = "The iac-ci webhook URL for this repo"
  value       = "https://7or7bxpoe2.execute-api.eu-west-1.amazonaws.com/webhook/iac-ci-claw-test"
}

output "trigger_id" {
  description = "The trigger ID used to identify this repo in iac-ci"
  value       = "iac-ci-claw-test"
}
