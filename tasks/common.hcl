#
# set generic KYC tasks
#

key_value "kyc_lvlup_rules:5:0:2:0" {
  value = 6
}

key_value "kyc_lvlup_rules:2:0:2:0" {
  value = 6
}

key_value "kyc_lvlup_rules:2:0:5:0" {
  value = 0
}

key_value "kyc_lvlup_rules:5:0:6:0" {
  value = 6
}

key_value "kyc_lvlup_rules:6:0:6:0" {
  value = 6
}

key_value "kyc_lvlup_rules:6:0:5:0" {
  value = 0
}

#
# create some base assets
#

asset "USD" {
  // SCYBEEYHQFQSN3MBOKH4FYLWJWSMK2ZSFPPWPZKFJMLW7D3242GAEKVT
  signer              = "GC2CZEQGTK6D5XEDP7VFJORTJMFVU4267XZEZTFEPGBXZKKA4JJMQQLN"
  max_issuance        = "9223372036854.775807"
  initial_preissuance = "9223372036854.775807"

  policies = [
    "base_asset",
    "transferable",
    "stats_quote_asset",
  ]

  details = {
    name                 = "United States Dollar"
    external_system_type = 4
  }
}

asset "ETH" {
  // SCYBEEYHQFQSN3MBOKH4FYLWJWSMK2ZSFPPWPZKFJMLW7D3242GAEKVT
  signer              = "GC2CZEQGTK6D5XEDP7VFJORTJMFVU4267XZEZTFEPGBXZKKA4JJMQQLN"
  max_issuance        = "9223372036854.775807"
  initial_preissuance = "9223372036854.775807"

  policies = [
    "base_asset",
    "transferable",
  ]

  details = {
    name                 = "Ethereum"
    external_system_type = 5
  }
}

asset "BTC" {
  // SCYBEEYHQFQSN3MBOKH4FYLWJWSMK2ZSFPPWPZKFJMLW7D3242GAEKVT
  signer              = "GC2CZEQGTK6D5XEDP7VFJORTJMFVU4267XZEZTFEPGBXZKKA4JJMQQLN"
  max_issuance        = "9223372036854.775807"
  initial_preissuance = "9223372036854.775807"

  policies = [
    "base_asset",
    "transferable",
  ]

  details = {
    name                 = "Bitcoin"
    external_system_type = 6
  }
}

key_value "issuance_tasks:ETH" {
  value = 0
}

key_value "issuance_tasks:BTC" {
  value = 0
}

key_value "issuance_tasks:USD" {
  value = 0
}

# default one just in case

key_value "issuance_tasks:*" {
  value = 0
}

#
# create asset pairs and set some prices
#

asset_pair {
  base             = "ETH"
  quote            = "USD"
  price            = "207.8"
  price_correction = "0"
  max_price_step   = "0"

  policies = [
    "tradeable_secondary_market",
  ]
}

asset_pair {
  base             = "BTC"
  quote            = "USD"
  price            = "6529"
  price_correction = "0"
  max_price_step   = "0"

  policies = [
    "tradeable_secondary_market",
  ]
}

#
# create placeholder users
#

// recovery seed: SC5LGCVWMKA7JEXTMH6UBZLTT2E36EQMYSC6XWMSMQ2JJFD6BE4D3AUC
// login: alice@mail.com
// pwd: alice@mail.com
user {
  wallet_id  = "687f67ef52e53e82daa439a4419d6c8819dd482fd32d3cb777d8d769c9440898"
  account_id = "GBTRYNKYER5QMJ7LMVI2I5PIZWDLXVUCNZZKQSWPOOQCUUCCYX3X7532"
  request    = "tasks/alice.json"
}

// recovery seed: SB6HC53QUTQL42QJDTPBCWOVDL3LVNWFKCDL3APC744ETWDEKMQ3JG7Z
// login: bob@mail.com
// pwd: bob@mail.com
user {
  wallet_id  = "8d03d790d4d562548e59d09101943b098b3028f34eff0f1a57aec3d2281d04c1"
  account_id = "GBTRYNKYER5QMJ7LMVI2I5PIZWDLXVUCNZZKQSWPOOQCUUCCYX3X7532"
  request    = "tasks/bob.json"
}

#
# issue some tokens for them
#

issuance {
  reference = "foobar"
  asset     = "ETH"
  amount    = "13.37"
  email     = "alice@mail.com"
}

issuance {
  reference = "spamegg"
  asset     = "BTC"
  amount    = "42.42"
  email     = "bob@mail.com"
}
