resource "google_project_service" "cloudresourcemanager" {
  service = "cloudresourcemanager.googleapis.com"
}

resource "google_project_service" "containers" {
  service = "container.googleapis.com" 
}

resource "google_project_service" "compute" {
  service = "compute.googleapis.com" 
}

resource "google_project_service" "iam" {
  service = "iam.googleapis.com"
}

resource "google_project_service" "dns" {
  service = "dns.googleapis.com"
}
