terraform {
  backend "s3" {
    bucket = "tfstate"
    key    = "terraform.tfstate"
    region = "us-east-1"
    access_key = "miniominio"
    secret_key = "sekritsekrit"
    endpoint = "http://storage:9000"
    skip_credentials_validation = true
    force_path_style = true
  }
}

provider "tokend" {
  account  = "GBA4EX43M25UPV4WIE6RRMQOFTWXZZRIPFAI5VPY6Z2ZVVXVWZ6NEOOB"
  signer   = "SAMJKTZVW5UOHCDK5INYJNORF2HRKYI72M5XSZCBYAHQHR34FFR4Z6G4"
  endpoint = "http://janus"
}

module "tokend_vanilla" {
  source = "git::https://github.com/tokend/terraform-tokend-vanilla.git?ref=cb2bd9092b4efd96fb4a36fe8703ee954823f22a"
}
