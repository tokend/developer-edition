resource tokend_account_rule "security_sender" {
  action     = "send"
  entry_type = "asset"

  entry = {
    asset_type = "${var.asset_type_security}"
    asset_code = "*"
  }
}

resource tokend_account_rule "security_payment_receiver" {
  action     = "receive_payment"
  entry_type = "asset"

  entry = {
    asset_type = "${var.asset_type_security}"
    asset_code = "*"
  }
}

resource tokend_account_rule "security_atomic_swap_receiver" {
  action     = "receive_atomic_swap"
  entry_type = "asset"

  entry = {
    asset_type = "${var.asset_type_security}"
    asset_code = "*"
  }
}

resource tokend_account_rule "security_withdrawer" {
  action     = "withdraw"
  entry_type = "asset"

  entry = {
    asset_type = "${var.asset_type_security}"
    asset_code = "*"
  }
}

resource tokend_account_rule "security_for_security_buy_offer_creator" {
  action = "create"
  entry_type = "offer"
  entry = {
    is_buy = true
    quote_asset_type = "${var.asset_type_kyc}"
    base_asset_type = "${var.asset_type_kyc}"
  }
}

resource tokend_account_rule "security_for_security_sell_offer_creator" {
  action = "create"
  entry_type = "offer"
  entry = {
    is_buy = false
    quote_asset_type = "${var.asset_type_kyc}"
    base_asset_type = "${var.asset_type_kyc}"
  }
}

resource tokend_account_rule "security_for_kyc_sell_offer_creator" {
  action = "create"
  entry_type = "offer"
  entry = {
    is_buy = false
    quote_asset_type = "${var.asset_type_kyc}"
    base_asset_type = "${var.asset_type_security}"
  }
}

resource tokend_account_rule "security_for_kyc_buy_offer_creator" {
  action = "create"
  entry_type = "offer"
  entry = {
    is_buy = true
    quote_asset_type = "${var.asset_type_kyc}"
    base_asset_type = "${var.asset_type_security}"
  }
}

resource tokend_account_rule "security_for_default_buy_offer_creator" {
  action = "create"
  entry_type = "offer"
  entry = {
    is_buy = true
    quote_asset_type = "${var.asset_type_default}"
    base_asset_type = "${var.asset_type_security}"
  }
}

resource tokend_account_rule "security_for_default_sell_offer_creator" {
  action = "create"
  entry_type = "offer"
  entry = {
    is_buy = false
    quote_asset_type = "${var.asset_type_default}"
    base_asset_type = "${var.asset_type_security}"
  }
}

resource tokend_account_rule "kyc_for_security_buy_offer_creator" {
  action = "create"
  entry_type = "offer"
  entry = {
    is_buy = true
    quote_asset_type = "${var.asset_type_security}"
    base_asset_type = "${var.asset_type_kyc}"
  }
}

resource tokend_account_rule "kyc_for_security_sell_offer_creator" {
  action = "create"
  entry_type = "offer"
  entry = {
    is_buy = false
    quote_asset_type = "${var.asset_type_security}"
    base_asset_type = "${var.asset_type_kyc}"
  }
}

resource tokend_account_rule "default_for_security_sell_offer_creator" {
  action = "create"
  entry_type = "offer"
  entry = {
    is_buy = false
    quote_asset_type = "${var.asset_type_security}"
    base_asset_type = "${var.asset_type_default}"
  }
}

resource tokend_account_rule "default_for_security_buy_offer_creator" {
  action = "create"
  entry_type = "offer"
  entry = {
    is_buy = true
    quote_asset_type = "${var.asset_type_security}"
    base_asset_type = "${var.asset_type_default}"
  }
}


resource tokend_account_rule "security_issuance_receiver" {
  action     = "receive_issuance"
  entry_type = "asset"

  entry = {
    asset_type = "${var.asset_type_security}"
    asset_code = "*"
  }
}

output "security_for_security_buy_offer_creator" {
  value = "${tokend_account_rule.security_for_security_buy_offer_creator.id}"
}

output "security_for_security_sell_offer_creator" {
    value = "${tokend_account_rule.security_for_security_sell_offer_creator.id}"
}

output "security_for_default_buy_offer_creator" {
    value = "${tokend_account_rule.security_for_default_buy_offer_creator.id}"
}

output "security_for_default_sell_offer_creator" {
  value = "${tokend_account_rule.security_for_default_sell_offer_creator.id}"
}

output "security_for_kyc_buy_offer_creator" {
  value = "${tokend_account_rule.security_for_kyc_buy_offer_creator.id}"
}

output "security_for_kyc_sell_offer_creator" {
  value = "${tokend_account_rule.security_for_kyc_sell_offer_creator.id}"
}

output "default_for_security_buy_offer_creator" {
  value = "${tokend_account_rule.default_for_security_buy_offer_creator.id}"
}

output "default_for_security_sell_offer_creator" {
  value = "${tokend_account_rule.default_for_security_sell_offer_creator.id}"
}


output "kyc_for_security_buy_offer_creator" {
  value = "${tokend_account_rule.kyc_for_security_buy_offer_creator.id}"
}

output "kyc_for_security_sell_offer_creator" {
  value = "${tokend_account_rule.kyc_for_security_sell_offer_creator.id}"
}

output "security_sender" {
  value = "${tokend_account_rule.security_sender.id}"
}

output "security_atomic_swap_receiver" {
  value = "${tokend_account_rule.security_atomic_swap_receiver.id}"
}

output "security_payment_receiver" {
  value = "${tokend_account_rule.security_payment_receiver.id}"
}

output "security_withdrawer" {
  value = "${tokend_account_rule.security_withdrawer.id}"
}

output "security_issuance_receiver" {
  value = "${tokend_account_rule.security_issuance_receiver.id}"
}
