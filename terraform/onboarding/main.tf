terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "eu-west-1"
}

provider "github" {
  token = var.github_token
  owner = var.github_owner
}

resource "random_password" "webhook_secret" {
  length  = 32
  special = false
}

resource "aws_ssm_parameter" "github_token" {
  name  = "/iac-ci/github-token"
  type  = "SecureString"
  value = var.github_token
}

resource "aws_dynamodb_table_item" "repo_registration" {
  table_name = "iac-ci-settings"
  hash_key   = "trigger_id"

  item = jsonencode({
    trigger_id               = { S = "iac-ci-claw-test" }
    repo_name                = { S = "williaumwu/iac-ci-claw-test" }
    git_url                  = { S = "https://github.com/williaumwu/iac-ci-claw-test.git" }
    secret                   = { S = random_password.webhook_secret.result }
    ssm_iac_ci_github_token  = { S = "/iac-ci/github-token" }
    aws_default_region       = { S = "eu-west-1" }
    engine_api_url           = { S = "" }
    engine_webhook_secret    = { S = "" }
  })
}

resource "github_repository_webhook" "iac_ci" {
  repository = "iac-ci-claw-test"

  configuration {
    url          = "https://7or7bxpoe2.execute-api.eu-west-1.amazonaws.com/webhook/iac-ci-claw-test"
    content_type = "application/json"
    secret       = random_password.webhook_secret.result
    insecure_ssl = false
  }

  active = true
  events = ["pull_request", "issue_comment"]
}
