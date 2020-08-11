provider "tokend" {
  account  = "GBA4EX43M25UPV4WIE6RRMQOFTWXZZRIPFAI5VPY6Z2ZVVXVWZ6NEOOB"
  signer   = "SAMJKTZVW5UOHCDK5INYJNORF2HRKYI72M5XSZCBYAHQHR34FFR4Z6G4"
  endpoint = "http://horizon"
}

module "tokend_vanilla" {
  source = "git::https://github.com/tokend/terraform-tokend-vanilla.git?ref=project/blockparty"
}
