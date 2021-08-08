resource "google_container_cluster" "default" {
  name                     = "${var.env}-gke"
  location                 = "${var.zone}"
  remove_default_node_pool = true
  initial_node_count       = 1
  network                  = google_compute_network.default.name
  subnetwork		   = google_compute_subnetwork.default.name
 
  addons_config {
  http_load_balancing {
    disabled = true
  }
  horizontal_pod_autoscaling {
    disabled = true
  }
 }
}

resource "google_container_node_pool" "default-1" {
  name       = "${var.gke_pool_name}"
  location   = "${var.zone}"
  cluster    = google_container_cluster.default.name
  node_count = 2

  node_config {
    #preemptible  = true
    machine_type = "${var.gke_machine}"
    disk_size_gb = "${var.gke_disk}"
    image_type   = "${var.gke_so}"
    oauth_scopes    = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
}
