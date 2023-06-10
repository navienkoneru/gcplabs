provider "google" {
  project     = var.project
  region      = var.region
  credentials = file(var.credentials)
} 


resource "google_compute_instance" "vminstance" {
  name         = var.name
  machine_type = var.machine_type
  zone         = var.zone
  tags = ["ontario"]

  boot_disk {
    initialize_params {
      image = "ubuntu-2004-focal-v20230605"
    }
  }

  
  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }
}

/*
resource "google_compute_network" "my-network" {
  name = "terraform-network"
}

provisioner "local-exec" {
    command = "gcloud compute instances create hello --zone us-central1-a"
  }

*/
