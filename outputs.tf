output "dtr_url" {
 value = "${module.dockeree-cluster.dtr_url}"
}

output "ucp_url" {
  value = "${module.dockeree-cluster.ucp_url}"
}

output "manager_ips" {
  value = "${module.dockeree-cluster.manager_ips}"
}

output "dtr_ips" {
  value = "${module.dockeree-cluster.dtr_ips}"
}
