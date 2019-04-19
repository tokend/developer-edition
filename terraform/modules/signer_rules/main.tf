resource tokend_signer_rule "issuance_creator" {
  action =  "create"
  entry_type = "reviewable_request"
  entry = {
    request_type = "create_issuance"
    issuance.asset_code = "*"
    issuance.asset_type = "*"
  }
}

resource tokend_signer_rule "tx_sender" {
  action     = "send"
  entry_type = "transaction"
}

resource tokend_signer_rule "request_reviewer" {
  action = "review"
  entry_type = "reviewable_request"
  entry = {
    request_type = "*"
  }
}

resource tokend_signer_rule "sale_checker" {
  action = "check"
  entry_type = "sale"
  entry = {
    sale_id = "*"
    sale_type = "*"
  }
}

resource tokend_signer_rule "kv_manager" {
  action = "manage"
  entry_type = "key_value"
}

resource tokend_signer_rule "limits_manager" {
  action = "manage"
  entry_type = "limits"
}

resource tokend_signer_rule "fee_manager" {
  action = "manage"
  entry_type = "fee"
}

resource tokend_signer_rule "license_creator" {
  action = "create"
  entry_type = "license"
}

resource tokend_signer_rule "stamp_creator" {
  action = "create"
  entry_type = "stamp"
}

output "issuance_creator" {
  value = "${tokend_signer_rule.issuance_creator.id}"
}

output "tx_sender" {
  value = "${tokend_signer_rule.tx_sender.id}"
}

output "request_reviewer" {
  value = "${tokend_signer_rule.request_reviewer.id}"
}

output "sale_checker" {
  value = "${tokend_signer_rule.sale_checker.id}"
}

output "kv_manager" {
  value = "${tokend_signer_rule.kv_manager.id}"
}

output "limits_manager" {
  value = "${tokend_signer_rule.limits_manager.id}"
}

output "fee_manager" {
  value = "${tokend_signer_rule.fee_manager.id}"
}

output "license_creator" {
  value = "${tokend_signer_rule.license_creator.id}"
}

output "stamp_creator" {
  value = "${tokend_signer_rule.stamp_creator.id}"
}