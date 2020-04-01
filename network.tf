# create VPC
resource "google_compute_network" "vpc" {
  name                    = "${var.app_name}-vpc"
  auto_create_subnetworks = "false"
  routing_mode            = "GLOBAL"
}

# create public subnet
resource "google_compute_subnetwork" "subnet_1" {
  name          = "${var.app_name}-subnet-1"
  ip_cidr_range = var.subnet_cidr_1
  network       = google_compute_network.vpc.name
  region        = var.gcp_region_1
}