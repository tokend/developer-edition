resource tokend_account_rule "kyc_sender" {
  action     = "send"
  entry_type = "asset"

  entry = {
    asset_type = "${var.asset_type_kyc}"
    asset_code = "*"
  }
}

resource tokend_account_rule "kyc_payment_receiver" {
  action     = "receive_payment"
  entry_type = "asset"

  entry = {
    asset_type = "${var.asset_type_kyc}"
    asset_code = "*"
  }
}

resource tokend_account_rule "kyc_atomic_swap_receiver" {
  action     = "receive_atomic_swap"
  entry_type = "asset"

  entry = {
    asset_type = "${var.asset_type_kyc}"
    asset_code = "*"
  }
}

resource tokend_account_rule "kyc_withdrawer" {
  action     = "withdraw"
  entry_type = "asset"

  entry = {
    asset_type = "${var.asset_type_kyc}"
    asset_code = "*"
  }
}

resource tokend_account_rule "kyc_for_kyc_buy_offer_creator" {
  action = "create"
  entry_type = "offer"
  entry = {
    is_buy = true
    quote_asset_type = "${var.asset_type_kyc}"
    base_asset_type = "${var.asset_type_kyc}"
  }
}

resource tokend_account_rule "kyc_for_kyc_sell_offer_creator" {
  action = "create"
  entry_type = "offer"
  entry = {
    is_buy = false
    quote_asset_type = "${var.asset_type_kyc}"
    base_asset_type = "${var.asset_type_kyc}"
  }
}


resource tokend_account_rule "default_for_kyc_buy_offer_creator" {
  action = "create"
  entry_type = "offer"
  entry = {
    is_buy = true
    quote_asset_type = "${var.asset_type_kyc}"
    base_asset_type = "${var.asset_type_default}"
  }
}

resource tokend_account_rule "default_for_kyc_sell_offer_creator" {
  action = "create"
  entry_type = "offer"
  entry = {
    is_buy = false
    quote_asset_type = "${var.asset_type_kyc}"
    base_asset_type = "${var.asset_type_default}"
  }
}

resource tokend_account_rule "kyc_for_default_buy_offer_creator" {
  action = "create"
  entry_type = "offer"
  entry = {
    is_buy = true
    quote_asset_type = "${var.asset_type_default}"
    base_asset_type = "${var.asset_type_kyc}"
  }
}

resource tokend_account_rule "kyc_for_default_sell_offer_creator" {
  action = "create"
  entry_type = "offer"
  entry = {
    is_buy = false
    quote_asset_type = "${var.asset_type_default}"
    base_asset_type = "${var.asset_type_kyc}"
  }
}


resource tokend_account_rule "kyc_issuance_receiver" {
  action     = "receive_issuance"
  entry_type = "asset"

  entry = {
    asset_type = "${var.asset_type_kyc}"
    asset_code = "*"
  }
}

output "kyc_for_default_buy_offer_creator" {
  value = "${tokend_account_rule.kyc_for_default_buy_offer_creator.id}"
}

output "kyc_for_default_sell_offer_creator" {
  value = "${tokend_account_rule.kyc_for_default_sell_offer_creator.id}"
}

output "kyc_for_kyc_buy_offer_creator" {
  value = "${tokend_account_rule.kyc_for_kyc_buy_offer_creator.id}"
}

output "kyc_for_kyc_sell_offer_creator" {
  value = "${tokend_account_rule.kyc_for_kyc_sell_offer_creator.id}"
}

output "default_for_kyc_buy_offer_creator" {
  value = "${tokend_account_rule.default_for_kyc_buy_offer_creator.id}"
}

output "default_for_kyc_sell_offer_creator" {
  value = "${tokend_account_rule.default_for_kyc_sell_offer_creator.id}"
}

output "kyc_sender" {
  value = "${tokend_account_rule.kyc_sender.id}"
}

output "kyc_atomic_swap_receiver" {
  value = "${tokend_account_rule.kyc_atomic_swap_receiver.id}"
}

output "kyc_payment_receiver" {
  value = "${tokend_account_rule.kyc_payment_receiver.id}"
}

output "kyc_withdrawer" {
  value = "${tokend_account_rule.kyc_withdrawer.id}"
}

output "kyc_issuance_receiver" {
  value = "${tokend_account_rule.kyc_issuance_receiver.id}"
}
