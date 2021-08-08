terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.71.0"
    }

#    google-beta = {
#      source = "hashicorp/google-beta"
#      version = "3.78.0"
#    }
  }
}

provider "google" {
  project = "${var.project_id}"
  region  = "${var.region}"
  zone    = "${var.zone}"
}

#provider "google-beta" {
#  project = "${var.project_id}"
#  region  = "${var.region}"
#  zone    = "${var.zone}"
#}
