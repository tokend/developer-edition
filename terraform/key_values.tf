resource tokend_key_value "asset_type_kyc_required" {
  key = "asset_type:kyc_required"
  value_type = "uint32"
  value = "${var.asset_type_kyc}"
}

resource tokend_key_value "asset_type_security" {
  key = "asset_type:security"
  value_type = "uint32"
  value = "${var.asset_type_security}"
}

resource tokend_key_value "asset_type_default" {
    key = "asset_type:default"
    value_type = "uint32"
    value = "${var.asset_type_default}"
}

resource tokend_key_value "change_role_task-submit_auto_verification" {
    key = "change_role_task:submit_auto_verification"
    value_type = "uint32"
    value = "1024"
}

resource tokend_key_value "change_role_task-complete_auto_verification" {
    key = "change_role_task:complete_auto_verification"
    value_type = "uint32"
    value = "2048"
}

resource tokend_key_value "change_role_task-manual_review_required" {
    key = "change_role_task:manual_review_required"
    value_type = "uint32"
    value = "4096"
}
