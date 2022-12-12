resource "google_compute_network" "demo_vpc_network" {
  name                    = "demo-vpc"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "demovpc_subnet1" {
  name                     = "public-subnet1-us-central1"
  ip_cidr_range            = "192.168.0.0/16"
  region                   = "us-central1"
  network                  = google_compute_network.demo_vpc_network.id
  private_ip_google_access = true
  depends_on               = [google_compute_network.demo_vpc_network]
}

resource "google_compute_subnetwork" "demovpc_subnet2" {
  name                     = "private-subnet1-us-central1"
  ip_cidr_range            = "192.0.0.0/24"
  region                   = "us-central1"
  network                  = google_compute_network.demo_vpc_network.id
  private_ip_google_access = true
  depends_on               = [google_compute_network.demo_vpc_network]
}