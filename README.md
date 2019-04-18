# TokenD Developer Edition

Quick way for running [TokenD](https://tokend.io) local development environment with [Docker](https://www.docker.com). It's not intended for any kind of production use. If you would like to do production or demo deployment, we highly reccomend to use this [tool instead](https://gitlab.com/tokend/tokend-cli).

## Requirements

* [Docker 17.06.0+](https://www.docker.com/get-started)
* [Compose 3.3+](https://docs.docker.com/compose/install/)
* Linux/MacOS, Windows support is experimental and has known issues.

## Bootstraping your environment

```sh
# drop any persistent state to make sure you are working with clean install
$ docker-compose down -v && docker-compose pull
# spin everything up
$ docker-compose up -d
# wait while environment initialization is complete
$ docker-compose logs -f initscripts
```

Now you should be able to access web client at [http://localhost:8060](http://localhost:8060) and admin dashboard at [http://localhost:8070](http://localhost:8070) default seed for login is `SAMJKTZVW5UOHCDK5INYJNORF2HRKYI72M5XSZCBYAHQHR34FFR4Z6G4`

These instructions are just a guideline for what you should generally do. You may modify provided `docker-compose.yml` or configuration files in `configs` directory to accommodate your needs.

## Coinpayments integration

TokenD Developer Edition comes with preconfigured [CoinPayments](https://www.coinpayments.net/) integration which allows you to enable deposit and withdrawals for any [supported](https://www.coinpayments.net/supported-coins) cryptocurrency.

> Make sure to update API credentials in `configs/coinpayments-*.yaml` files before depositing any mainnet cryptocurrency or your coins *will* be lost.

## Support

If you need any help with TokenD or would like to suggest a feature, please reach us via https://tokend.atlassian.net/servicedesk/
