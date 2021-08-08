terraform {
  backend "gcs" {
    bucket      = "${var.bucket}"
  }
}
