
resource "google_compute_instance" "demo_compute_instance" {
  #count        = 2
  name         = "web-server"
  #name         = "demo-instance-${count.index+1}"
  machine_type = "n1-standard-2"
  

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11" 
    }
  }
  
  scratch_disk {
    interface = "SCSI"
  }

  tags = ["allow-http"]

  

  network_interface {
    network    = google_compute_network.demo_vpc_network.name
    subnetwork = google_compute_subnetwork.demovpc_subnet1.name
    
    access_config {
      // Ephemeral public IP
    }
  }

  metadata_startup_script = file("script.sh")

  depends_on = [google_compute_network.demo_vpc_network, google_compute_subnetwork.demovpc_subnet1]
}