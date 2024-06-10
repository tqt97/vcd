resource "vcd_org_group" "tuantq-AdminGroup-01" {
  org = "VPC-5500855" // org name

  provider_type = "OAUTH" // provider type - OAUTH or SAML
  name          = "tuantq-AdminGroup-01" 
  role          = "Organization Administrator" // role for the new org group
}