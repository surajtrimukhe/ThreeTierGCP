resource "google_compute_firewall" "demovpc_firewall_ssh" {
  name    = "allow-ssh"
  network = google_compute_network.demo_vpc_network.name

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
  depends_on    = [google_compute_network.demo_vpc_network]
}

resource "google_compute_firewall" "demovpc_firewall_icmp" {
  name    = "allow-icmp"
  network = google_compute_network.demo_vpc_network.name

  allow {
    protocol = "icmp"
  }
  depends_on = [google_compute_network.demo_vpc_network]
}


resource "google_compute_firewall" "allow_http1" {
  name    = "allow-http-rule1"
  network = "demo-vpc"
  source_ranges = ["0.0.0.0/0"]
  allow {
    ports    = ["80", "443"]
    protocol = "tcp"
  }
  target_tags = ["allow-http"]
  priority    = 1000

}
