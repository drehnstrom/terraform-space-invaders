# Virtual machine output | vm-output.tf

output "si-server-name" {
  value = google_compute_instance.si-server.name
}

output "si-server-external-ip" {
  value = google_compute_instance.si-server.network_interface.0.access_config.0.nat_ip
}

output "si-server-internal-ip" {
  value = google_compute_instance.si-server.network_interface.0.network_ip
}
