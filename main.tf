module "dockeree-cluster" {
  source                      = "git@github.com:IGNW/terraform-vsphere-dockeree?ref=vesta"

  environment                 = "csnow"
  vsphere_server              = "10.254.252.5"
  vsphere_datacenter          = "POC-Lab"
  dtr_fqdn                    = "dtr-csnow.ignw.local"
  ucp_fqdn                    = "ucp-csnow.ignw.local"

  manager_vsphere_datastore   = "10.254.252.23_Datastore"
  manager_vsphere_cluster     = "POC"
  manager_vsphere_network     = "ignw-poc|vesta-devops|servers"
  manager_vm_template	      = "centos7_template_dockeree_UCP316"

  worker_a_label	      = "mwt"
  worker_a_vsphere_datastore  = "10.254.252.23_Datastore"
  worker_a_vsphere_cluster    = "POC"
  worker_a_vsphere_network    = "ignw-poc|vesta-devops|servers"
  worker_a_vm_template	      = "centos7_template_dockeree_UCP316"

  worker_b_label              = "wrk1"
  worker_b_vsphere_datastore  = "10.254.252.23_Datastore"
  worker_b_vsphere_cluster    = "POC"
  worker_b_vsphere_network    = "ignw-poc|vesta-devops|servers"
  worker_b_vm_template	      = "centos7_template_dockeree_UCP316"

  vsphere_folder              = "dockeree-csnow"
  domain                      = "ignw.io"
  manager_node_count          = "3"
  worker_a_node_count         = "2"
  worker_b_node_count         = "2"
  dtr_node_count              = "3"
  dtr_nfs_url                 = "nfs://10.50.2.233/data"
  vsphere_user                = "administrator@vsphere.local"
  vsphere_password            = "Ignw!098"
  ssh_username                = "root"
  ssh_password                = "changeme1"
  ucp_admin_password          = "ucpw123!"
  dtr_root_volume_size        = "40"
  worker_root_volume_size     = "40"
  manager_root_volume_size    = "40"
  scsi_type                   = "pvscsi"
  script_path                 = "/tmp"
  dockeree_license	      = ""
  ucp_version                = "3.1.6"
  dtr_version                = "2.6.5"
  consul_version             = "1.4.4"

  load_balancer_count        = "2"
  load_balancer_ips          = ["10.50.2.70"]
  load_balancer_script_path  = "/tmp"
  load_balancer_username     = "root"
  load_balancer_password     = "changeme1"

  use_custom_ssl             = "0"
  ssl_ca_file                = ""
  ssl_cert_file              = ""
  ssl_key_file               = ""

  run_init                   = "1"
  verbose_output             = "1"

}
