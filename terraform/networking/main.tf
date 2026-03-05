terraform {
  required_version = ">= 1.0"
}

resource "local_file" "networking_placeholder" {
  content  = "networking placeholder"
  filename = "${path.module}/output.txt"
}
