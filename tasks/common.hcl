#
# set generic KYC tasks
#

key_value "atomic_swap_tasks" {
  value = 3
}

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
    "can_be_quote_in_atomic_swap",
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
    "can_be_quote_in_atomic_swap",
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
