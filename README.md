# iac-ci-claw-test

Test repository for iac-ci pipeline validation. Contains 4 independent Terraform modules deployed to eu-west-1.

## Modules

| Module | Path | Description |
|--------|------|-------------|
| VPC | `terraform/vpc` | VPC with public/private subnets, IGW, NAT |
| CodeBuild | `terraform/codebuild` | CodeBuild project with S3 artifacts bucket |
| API Gateway | `terraform/api-gateway` | HTTP API with Lambda integration |
| S3 + CloudFront | `terraform/s3-cloudfront` | S3 bucket with CloudFront distribution |

## Usage

Each module can be planned/applied independently:

```bash
cd terraform/<module>
tofu init
tofu plan
tofu apply
```

## Pipeline

The `.iac_ci/config.yaml` at the repo root defines the full pipeline order.
