
variable "project_id" {
  type = string
  description = "GCP Project ID"
}

variable "app_name" {
  type = string
  description = "Application Name"
}

variable "gcp_region_1" {
  type = string
  description = "GCP Region"
}

# define GCP zone
variable "gcp_zone_1" {
  type = string
  description = "GCP Zone"
}

# define subnet
variable "subnet_cidr_1" {
  type = string
  description = "Subnet CIDR 1"
}
