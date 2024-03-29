resource "google_compute_instance" "bastion_host" {
  name         = "bastion-host"
  machine_type = "e2-micro"
  zone         = "us-central1-a"
  tags         = ["http-server", "https-server"]
  boot_disk {
    initialize_params {
      type  = "pd-standard"
      image = "debian-cloud/debian-12"
      size  = 10
    }
  }
  scheduling {
    automatic_restart   = true
    on_host_maintenance = "MIGRATE"
    preemptible         = false
    provisioning_model  = "STANDARD"
  }
  network_interface {
    access_config {
      network_tier = "PREMIUM"
    }
    network    = "default"
    network_ip = "10.128.0.10"
  }

  lifecycle {
    ignore_changes = [metadata]
  }
}
