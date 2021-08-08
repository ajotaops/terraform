resource "google_compute_network" "default" {
  name                    = "${var.env}"
  auto_create_subnetworks = "false"
}

resource "google_compute_subnetwork" "default" {
  name          = "${var.env}"
  ip_cidr_range = "10.200.0.0/16"
  region        = "${var.region}"
  network       = google_compute_network.default.name
}

resource "google_compute_address" "traefik" {
  name         = "traefik"
  address_type = "EXTERNAL"
  region       = "${var.region}"
}
