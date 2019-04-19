variable "default_rules" {
  type = "list"
}

variable "external_systems_admin" {
  type = "list"
}

variable "kyc_aml_admin" {
  type = "list"
}

variable "license_admin" {
  type = "list"
}

resource tokend_signer_role "super_admin" {
  rules = [
    "1",
  ]

  details = {
    admin_role  = true
    name        = "Super Administrator"
    description = "Have full access to system administration functionality"
  }
}

resource tokend_signer_role "external_systems_admin" {
  rules = [
    "${var.external_systems_admin}",
  ]

  details = {
    admin_role = true
    name       = "External Systems Administrator"
    details    = "Performs issuance and withdraw operations of external funds"
  }
}

resource tokend_signer_role "kyc_aml_admin" {
  rules = [
    "${var.kyc_aml_admin}",
  ]

  details = {
    admin_role  = true
    name        = "KYC/AML"
    description = "Responsible for reviewing users requests including KYC, asset/sale creation etc"
  }
}

resource tokend_signer_role "license_admin" {
  rules = [
  "${var.license_admin}"
  ]
  details = {
    admin_role = true
    name = "License Admin"
    description = "Able to manage system licenses"
  }
}


// users operational signer role
resource tokend_signer_role "default" {
  rules = ["1"]
}

// KV for Identity Storage
resource tokend_key_value "default" {
  key        = "signer_role:default"
  value_type = "uint32"
  value      = "${tokend_signer_role.default.id}"
}
