terraform {
  cloud {
    organization = "###"

    workspaces {
      name = "###"
    }
  }
  required_providers {
    oci = {
      source = "hashicorp/oci"
    }
  }
} 

provider "oci" {
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
  fingerprint      = var.fingerprint
  private_key_path = var.private_key
  region           = var.region
}