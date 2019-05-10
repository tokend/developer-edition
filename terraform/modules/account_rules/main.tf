variable "asset_type_default" {
  type = "string"
}

variable "asset_type_kyc" {
  type = "string"
}

variable "asset_type_security" {
  type ="string"
}

variable restricted_poll_type {
  type = "string"
}


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

resource tokend_account_rule "vote_creator" {
  action = "create"
  entry_type = "vote"

  entry = {
    poll_id = "*"
    permission_type = "*"
  }
}

resource tokend_account_rule "vote_remover" {
  action = "remove"
  entry_type = "vote"

  entry = {
    poll_id = "*"
    permission_type = "*"
  }
}

resource tokend_account_rule "forbid_restricted_vote_remove" {
  action = "remove"
  entry_type = "vote"
  forbids = true

  entry = {
    poll_id = "*"
    permission_type = "${var.restricted_poll_type}"
  }
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

output "vote_creator" {
  value = "${tokend_account_rule.vote_creator.id}"
}

output "vote_remover" {
  value = "${tokend_account_rule.vote_remover.id}"
}

output "forbid_restricted_vote_remove" {
  value = "${tokend_account_rule.forbid_restricted_vote_remove.id}"
}