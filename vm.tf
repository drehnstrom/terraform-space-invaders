# Create Google Cloud VM | vm.tf

# Terraform plugin for creating random ids
resource "random_id" "instance_id" {
 byte_length = 4
}

# Create VM #1
resource "google_compute_instance" "si-server" {
  name         = "${var.app_name}-webserver-${random_id.instance_id.hex}"
  machine_type = "f1-micro"
  zone         = var.gcp_zone_1
  tags         = ["http"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  metadata_startup_script = "sudo apt-get update; apt-get install -y git apache2; cd /var/www/html; rm index.html -f; git init; git pull https://github.com/roitraining/space-invaders.git;"

  network_interface {
    network       = google_compute_network.vpc.name
    subnetwork    = google_compute_subnetwork.subnet_1.name
    access_config { }
  }
} 
