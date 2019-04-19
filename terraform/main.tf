
variable restricted_poll_type {
  type = "string"
  default = "3"
}

provider "tokend" {
  account  = "GBA4EX43M25UPV4WIE6RRMQOFTWXZZRIPFAI5VPY6Z2ZVVXVWZ6NEOOB"
  signer   = "SAMJKTZVW5UOHCDK5INYJNORF2HRKYI72M5XSZCBYAHQHR34FFR4Z6G4"
  endpoint = "http://janus"
}

// creates basic account rules
module "account_rules" {
  source = "modules/account_rules"
  restricted_poll_type = "${var.restricted_poll_type}"
}

// TODO withdraw request

// create default account roles
module "account_roles" {
  source = "modules/account_roles"
  unverified_rules = [
    "${module.account_rules.balance_creator}",
    "${module.account_rules.sender}",
    "${module.account_rules.payment_receiver}",
    "${module.account_rules.atomic_swap_receiver}",
    "${module.account_rules.issuance_receiver}",
    "${module.account_rules.tx_sender}",
    "${module.account_rules.role_updater}",
    "${module.account_rules.signer_manager}",
    "${module.account_rules.sell_offer_creator}",
    "${module.account_rules.buy_offer_creator}",
    "${module.account_rules.sale_participant}",
    "${module.account_rules.external_binder}",
    "${module.account_rules.vote_creator}",
    "${module.account_rules.vote_remover}",
    "${module.account_rules.forbid_restricted_vote_remove}",
  ]

  general_rules = [
    "${module.account_rules.balance_creator}",
    "${module.account_rules.sender}",
    "${module.account_rules.payment_receiver}",
    "${module.account_rules.atomic_swap_receiver}",
    "${module.account_rules.issuance_receiver}",
    "${module.account_rules.tx_sender}",
    "${module.account_rules.role_updater}",
    "${module.account_rules.signer_manager}",
    "${module.account_rules.sell_offer_creator}",
    "${module.account_rules.buy_offer_creator}",
    "${module.account_rules.kyc_buy_offer_creator}",
    "${module.account_rules.kyc_sell_offer_creator}",
    "${module.account_rules.kyc_buy_offer_creator_0_1}",
    "${module.account_rules.kyc_sell_offer_creator_0_1}",
    "${module.account_rules.kyc_buy_offer_creator_1_0}",
    "${module.account_rules.kyc_sell_offer_creator_1_0}",
    "${module.account_rules.kyc_sender}",
    "${module.account_rules.kyc_atomic_swap_receiver}",
    "${module.account_rules.kyc_payment_receiver}",
    "${module.account_rules.kyc_withdrawer}",
    "${module.account_rules.kyc_issuance_receiver}",
    "${module.account_rules.reviewable_request_creator}",
    "${module.account_rules.sale_participant}",
    "${module.account_rules.asset_withdrawer}",
    "${module.account_rules.external_binder}",
    "${module.account_rules.vote_creator}",
    "${module.account_rules.vote_remover}",
    "${module.account_rules.forbid_restricted_vote_remove}",
  ]

  syndicate_rules = [
    "${module.account_rules.balance_creator}",
    "${module.account_rules.sender}",
    "${module.account_rules.payment_receiver}",
    "${module.account_rules.atomic_swap_receiver}",
    "${module.account_rules.issuance_receiver}",
    "${module.account_rules.tx_sender}",
    "${module.account_rules.role_updater}",
    "${module.account_rules.signer_manager}",
    "${module.account_rules.sell_offer_creator}",
    "${module.account_rules.buy_offer_creator}",
    "${module.account_rules.asset_creator}",
    "${module.account_rules.kyc_buy_offer_creator}",
    "${module.account_rules.kyc_sell_offer_creator}",
    "${module.account_rules.kyc_buy_offer_creator_0_1}",
    "${module.account_rules.kyc_sell_offer_creator_0_1}",
    "${module.account_rules.kyc_buy_offer_creator_1_0}",
    "${module.account_rules.kyc_sell_offer_creator_1_0}",
    "${module.account_rules.kyc_sender}",
    "${module.account_rules.kyc_atomic_swap_receiver}",
    "${module.account_rules.kyc_payment_receiver}",
    "${module.account_rules.kyc_withdrawer}",
    "${module.account_rules.kyc_issuance_receiver}",
    "${module.account_rules.reviewable_request_creator}",
    "${module.account_rules.sale_participant}",
    "${module.account_rules.asset_withdrawer}",
    "${module.account_rules.external_binder}",
    "${module.account_rules.vote_creator}",
    "${module.account_rules.vote_remover}",
    "${module.account_rules.forbid_restricted_vote_remove}",
  ]

  blocked_rules = []
}

// create defaul signer rules
module "signer_rules" {
  source = "modules/signer_rules"
}

// create default signer roles
module "signer_roles" {
  source = "modules/signer_roles"

  default_rules = [
    "1",
  ]

  kyc_aml_admin = [
    "${module.signer_rules.tx_sender}",
    "${module.signer_rules.issuance_creator}",
  ]

  external_systems_admin = [
    "${module.signer_rules.tx_sender}",
  ]

  license_admin = [
    "${module.signer_rules.tx_sender}",
    "${module.signer_rules.license_creator}",
    "${module.signer_rules.stamp_creator}",
  ]

}

resource tokend_key_value "default_withdraw_tasks" {
  key        = "withdrawal_tasks:*"
  value_type = "uint32"
  value      = "2048"
}

resource tokend_key_value "default_change_role_tasks" {
  key        = "change_role_tasks:*:*"
  value_type = "uint32"
  value      = "1"
}

resource tokend_key_value "asset_create_tasks" {
  key        = "asset_create_tasks"
  value_type = "uint32"
  value      = "1"
}

resource tokend_key_value "limits_update_tasks" {
  key        = "limits_update_tasks"
  value_type = "uint32"
  value      = "1"
}

resource tokend_key_value "asset_update_default" {
  key        = "asset_update_tasks:*"
  value_type = "uint32"
  value      = "1"
}

resource tokend_key_value "asset_update_task" {
  key        = "asset_update_tasks"
  value_type = "uint32"
  value      = "1"
}

resource tokend_key_value "sale_create_tasks" {
  key        = "sale_create_tasks:*"
  value_type = "uint32"
  value      = "2"
}

resource tokend_key_value "issuance_tasks_default" {
  key        = "issuance_tasks:*"
  value_type = "uint32"
  value      = "0"
}

resource tokend_key_value "preissuance_tasks_default" {
  key        = "preissuance_tasks:*"
  value_type = "uint32"
  value      = "0"
}

resource tokend_key_value "poll_type_restricted" {
  key = "poll_type:restricted"
  value_type = "uint32"
  value = "${var.restricted_poll_type}"
}

resource tokend_asset "DOGE" {
  code                        = "DOGE"
  max_issuance_amount         = "9223372036853"
  initial_pre_issuance_amount = "9223372036853"
  pre_issuance_signer         = "GBA4EX43M25UPV4WIE6RRMQOFTWXZZRIPFAI5VPY6Z2ZVVXVWZ6NEOOB"
  trailing_digits_count       = 6

  policies = [
    "transferable",
    "base_asset",
    "stats_quote_asset",
  ]
}

resource tokend_asset "BTC" {
  code                        = "BTC"
  max_issuance_amount         = "21000000"
  initial_pre_issuance_amount = "21000000"
  pre_issuance_signer         = "GBA4EX43M25UPV4WIE6RRMQOFTWXZZRIPFAI5VPY6Z2ZVVXVWZ6NEOOB"
  trailing_digits_count       = 6

  policies = [
    "transferable",
    "base_asset",
  ]
}

resource tokend_asset "USD" {
  code                        = "USD"
  max_issuance_amount         = "9223372036853"
  initial_pre_issuance_amount = "9223372036853"
  pre_issuance_signer         = "GBA4EX43M25UPV4WIE6RRMQOFTWXZZRIPFAI5VPY6Z2ZVVXVWZ6NEOOB"
  trailing_digits_count       = 6

  policies = [
    "transferable",
  ]
}

resource tokend_asset_pair "BTC_DOGE" {
  base  = "${tokend_asset.BTC.id}"
  quote = "${tokend_asset.DOGE.id}"
  price = "1960909"
}

resource tokend_asset_pair "USD_DOGE" {
  base  = "${tokend_asset.USD.id}"
  quote = "${tokend_asset.DOGE.id}"
  price = "1000"
}

resource tokend_asset_pair "USD_BTC" {
  base  = "${tokend_asset.BTC.id}"
  quote = "${tokend_asset.USD.id}"
  price = "2344111116"
}
