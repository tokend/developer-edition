resource tokend_account_rule "kyc_sender" {
  action     = "send"
  entry_type = "asset"

  entry = {
    asset_type = "1"
    asset_code = "*"
  }
}

resource tokend_account_rule "kyc_payment_receiver" {
  action     = "receive_payment"
  entry_type = "asset"

  entry = {
    asset_type = "1"
    asset_code = "*"
  }
}

resource tokend_account_rule "kyc_atomic_swap_receiver" {
  action     = "receive_atomic_swap"
  entry_type = "asset"

  entry = {
    asset_type = "1"
    asset_code = "*"
  }
}

resource tokend_account_rule "kyc_withdrawer" {
  action     = "withdraw"
  entry_type = "asset"

  entry = {
    asset_type = "1"
    asset_code = "*"
  }
}


resource tokend_account_rule "kyc_buy_offer_creator" {
  action = "create"
  entry_type = "offer"
  entry = {
    is_buy = true
    quote_asset_type = "1"
    base_asset_type = "1"
  }
}

resource tokend_account_rule "kyc_sell_offer_creator" {
  action = "create"
  entry_type = "offer"
  entry = {
    is_buy = false
    quote_asset_type = "1"
    base_asset_type = "1"
  }
}


resource tokend_account_rule "kyc_buy_offer_creator_1_0" {
  action = "create"
  entry_type = "offer"
  entry = {
    is_buy = true
    quote_asset_type = "1"
    base_asset_type = "0"
  }
}

resource tokend_account_rule "kyc_sell_offer_creator_1_0" {
  action = "create"
  entry_type = "offer"
  entry = {
    is_buy = false
    quote_asset_type = "1"
    base_asset_type = "0"
  }
}

resource tokend_account_rule "kyc_buy_offer_creator_0_1" {
  action = "create"
  entry_type = "offer"
  entry = {
    is_buy = true
    quote_asset_type = "0"
    base_asset_type = "1"
  }
}

resource tokend_account_rule "kyc_sell_offer_creator_0_1" {
  action = "create"
  entry_type = "offer"
  entry = {
    is_buy = false
    quote_asset_type = "0"
    base_asset_type = "1"
  }
}


resource tokend_account_rule "kyc_issuance_receiver" {
  action     = "receive_issuance"
  entry_type = "asset"

  entry = {
    asset_type = "1"
    asset_code = "*"
  }
}

resource tokend_key_value "asset_type_kyc_required" {
  key = "asset_type:kyc_required"
  value_type = "uint32"
  value = "1"
}

output "kyc_buy_offer_creator" {
  value = "${tokend_account_rule.kyc_buy_offer_creator.id}"
}

output "kyc_sell_offer_creator" {
  value = "${tokend_account_rule.kyc_sell_offer_creator.id}"
}

output "kyc_buy_offer_creator_0_1" {
  value = "${tokend_account_rule.kyc_buy_offer_creator_0_1.id}"
}

output "kyc_sell_offer_creator_0_1" {
  value = "${tokend_account_rule.kyc_sell_offer_creator_0_1.id}"
}

output "kyc_buy_offer_creator_1_0" {
  value = "${tokend_account_rule.kyc_buy_offer_creator_1_0.id}"
}

output "kyc_sell_offer_creator_1_0" {
  value = "${tokend_account_rule.kyc_sell_offer_creator_1_0.id}"
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
