signer "vasil@tokend.io" {
  public_key = "GDHTKTY2XKXMMXZMQIK3QU2IS7ZZE7ZYQD5PAN2T2MVS5JHBFGEV5ZCX"
  weight     = 255
  identity   = 2

  // assigned signer types, see https://tokend.gitbook.io/knowledge-base/technical-details/key-entities/signer for details
  type = [
    "reader",
    "not_verified_acc_manager",
    "general_acc_manager",
    "direct_debit_operator",
    "asset_manager",
    "asset_rate_manager",
    "balance_manager",
    "issuance_manager",
    "invoice_manager",
    "payment_operator",
    "limits_manager",
    "account_manager",
    "commission_balance_manager",
    "operational_balance_manager",
    "events_checker",
    "exchange_acc_manager",
    "syndicate_acc_manager",
    "user_asset_manager",
    "user_issuance_manager",
    "withdraw_manager",
    "fees_manager",
    "tx_sender",
    "aml_alert_manager",
    "aml_alert_reviewer",
    "kyc_acc_manager",
    "kyc_super_admin",
    "external_system_account_id_pool_manager",
    "key_value_manager",
    "super_issuance_manager",
    "contract_manager",
  ]
}
