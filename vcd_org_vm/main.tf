resource "vcd_vm" "TestVm" {
  org              = "VPC-5500855" // org name 
  vdc              = "VPC-5500855" // vdc name 
  name             = "VM-From-Terraform" // vm name 
  computer_name    = "Computer-01" // computer name 
  cpus             = 1 // number of cpus 
  memory           = 1024 // memory in MB 
  os_type          = "ubuntu64Guest" // os type - ubuntu64Guest, centos64Guest, winNetEnterpriseGuest, winNetStandardGuest
  hardware_version = "vmx-11" // hardware version - vmx-11, vmx-10, vmx-09
  network {
    type               = "org" // network type - org or vapp
    name               = "Network-100" // network name  
    adapter_type       = "VMXNET3" // network adapter type - VMXNET3 or E1000
    ip_allocation_mode = "POOL" // ip allocation mode - DHCP or POOL
  }
}