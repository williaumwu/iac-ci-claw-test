terraform {
  required_version = ">= 1.0"
}

resource "local_file" "iam_roles_placeholder" {
  content  = "iam-roles placeholder"
  filename = "${path.module}/output.txt"
}
