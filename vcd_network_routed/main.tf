resource "vcd_network_routed" "net" {
  org = "VPC-5500855" # Optional - if not provided, it will be the same as org
  vdc = "VPC-5500855" # Optional - if not provided, it will be the same as org

  name         = "Network-999"
  edge_gateway = "Edge-VPC-5500855-01"
  gateway      = "10.10.0.1"

  # Edge-VPC-5500855-01
  # dhcp_pool {
  #   start_address = "10.10.0.2"
  #   end_address   = "10.10.0.100"
  # }

  static_ip_pool {
    start_address = "10.10.0.100"
    end_address   = "10.10.0.200"
  }
}