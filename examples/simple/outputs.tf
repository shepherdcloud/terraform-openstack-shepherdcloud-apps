output "apps_network_id" {
  value       = "${module.shepherdcloud_apps.apps_network_id}"
  description = "The id of the CICD Network being created"
}

output "apps_subnet_ids" {
  value       = "${module.shepherdcloud_apps.apps_subnet_ids[0]}"
  description = "The id of all CICD subnets being created"
}
