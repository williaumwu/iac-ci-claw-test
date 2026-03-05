terraform {
  required_version = ">= 1.0"
}

resource "local_file" "monitoring_placeholder" {
  content  = "monitoring placeholder"
  filename = "${path.module}/output.txt"
}
