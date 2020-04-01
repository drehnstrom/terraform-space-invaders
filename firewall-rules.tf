# Allow internal traffic on all ports
resource "google_compute_firewall" "allow-internal" {
  name    = "${google_compute_network.vpc.name}-allow-internal"
  network = "${google_compute_network.vpc.name}"
  allow {
    protocol = "icmp"
  }
  allow {
    protocol = "tcp"
    ports    = ["0-65535"]
  }
  allow {
    protocol = "udp"
    ports    = ["0-65535"]
  }
  source_ranges = [
    "${var.subnet_cidr_1}"
  ]
}

# Allow http
resource "google_compute_firewall" "allow-http" {
  name    = "${google_compute_network.vpc.name}-allow-http"
  network = "${google_compute_network.vpc.name}"
  allow {
    protocol = "tcp"
    ports    = ["80"]
  }
  target_tags = ["http"] 
}


# allow ssh
resource "google_compute_firewall" "allow-ssh" {
  name    = "${google_compute_network.vpc.name}-allow-ssh"
  network = "${google_compute_network.vpc.name}"
  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
}