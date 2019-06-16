output "apps_network_id" {
  value       = "${module.apps_network.network_id}"
  description = "The id of the CICD Network being created"
}

output "apps_subnet_ids" {
  value       = "${module.apps_network.subnet_ids}"
  description = "The id of all CICD subnets being created"
}
