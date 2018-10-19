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
