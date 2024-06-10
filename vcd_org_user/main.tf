resource "vcd_org_user" "my-org-admin" {
  org         = "VPC-5500855" // org name
  name        = "tuantq-02" // name for the new org admin
  description = "a new org admin" // description for the new org admin
  role        = "Organization Administrator" // role for the new org admin
  password    = "change-me" // password for the new org admin
}