resource "google_service_account" "traefik" {
  account_id   = "traefik"
  display_name = "Traefik"
}

resource "google_service_account_key" "traefik" {
  service_account_id = google_service_account.traefik.name
  public_key_type    = "TYPE_X509_PEM_FILE"
}

resource "google_service_account" "grafana" {
  account_id   = "grafana"
  display_name = "Grafana"
}

resource "google_service_account_key" "grafana" {
  service_account_id = google_service_account.grafana.name
  public_key_type    = "TYPE_X509_PEM_FILE"
}
