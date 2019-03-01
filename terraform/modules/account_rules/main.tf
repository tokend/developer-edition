resource tokend_account_rule "signer_manager" {
  action = "*"
  entry_type = "signer"
}

resource tokend_account_rule "role_updater" {
  action = "create"
  entry_type = "reviewable_request"
  entry = {
    type = "change_role"
  }
}

resource tokend_account_rule "balance_creator" {
  action = "create"
  entry_type = "balance"
}

resource tokend_account_rule "tx_sender" {
  action     = "send"
  entry_type = "transaction"
}

resource tokend_account_rule "asset_creator" {
  action = "create"
  entry_type = "asset"
  entry = {
    asset_type = "*"
    asset_code = "*"
  }
}


resource tokend_account_rule "asset_withdrawer" {
  action = "withdraw"
  entry_type = "asset"
  entry = {
    asset_type = "*"
    asset_code = "*"
  }
}


resource tokend_account_rule "reviewable_request_creator" { // TODO shrink scope to specific requests
  action = "create"
  entry_type = "reviewable_request"
  entry = {
    request_type = "*"
  }
}



resource tokend_account_rule "sale_participant" {
  action     = "participate"
  entry_type = "sale"

  entry = {
    sale_type = "*"
    sale_id = "*"
  }
}

resource tokend_account_rule "external_binder" {
  action = "bind"
  entry_type = "external_system_account_id_pool_entry"
}

output "external_binder" {
  value = "${tokend_account_rule.external_binder.id}"
}

output "sale_participant" {
  value = "${tokend_account_rule.sale_participant.id}"
}


output "reviewable_request_creator" {
  value = "${tokend_account_rule.reviewable_request_creator.id}"
}

output "signer_manager" {
  value = "${tokend_account_rule.signer_manager.id}"
}

output "role_updater" {
  value = "${tokend_account_rule.role_updater.id}"
}

output "tx_sender" {
  value = "${tokend_account_rule.tx_sender.id}"
}

output "balance_creator" {
  value = "${tokend_account_rule.balance_creator.id}"
}

output "asset_creator" {
  value = "${tokend_account_rule.asset_creator.id}"
}

output "asset_withdrawer" {
  value = "${tokend_account_rule.asset_withdrawer.id}"
}
