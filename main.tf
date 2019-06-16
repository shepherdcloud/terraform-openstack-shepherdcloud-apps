#**************************** Management network ******************************
module "apps_network" {
  #source              = "../terraform-os-network/"
  source              = "git@github.com:shepherdcloud/terraform-openstack-network.git"
  network_name        = "${var.project_name}-apps-net"
  network_tags        = ["${var.project_name}", "apps", "shepherdcloud"]
  network_description = "${var.network_description}"

  subnets = [
    {
      subnet_name       = "${var.project_name}-apps-subnet"
      subnet_cidr       = "10.10.12.0/24"
      subnet_ip_version = 4
      subnet_tags       = "${var.project_name}, apps, shepherdcloud"
    }
  ]
}

#**************************** Router setup *******************************
resource "openstack_networking_router_interface_v2" "router_interface_apps" {
  router_id = "${var.project_router_id}"
  subnet_id = "${module.apps_network.subnet_ids[0]}"
}