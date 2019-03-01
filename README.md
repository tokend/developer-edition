# TokenD Developer Edition

Quick way for running [TokenD](https://tokend.io) development environment with [Docker](https://www.docker.com). There are known issues and it's not intended for any kind of production use.
If you are interested in running TokenD please reach us at `dev@distributedlab.com`.

## Requirements

* [Docker](https://www.docker.com/get-started)
* [Compose](https://docs.docker.com/compose/install/)
* Linux/MacOS, Windows support is experimental and has known issues.

### Bootstraping your environment

```sh
# drop any persistent state to make sure you are working with clean install
$ docker-compose down -v
# spin everything up
$  docker-compose up -d
# wait while environment initialization is complete
$  docker-compose logs -f initscripts
```

Now you should be able to access web client at [http://localhost:8060](http://localhost:8060) and admin dashboard at [http://localhost:8070](http://localhost:8070) default seed for login is `SAMJKTZVW5UOHCDK5INYJNORF2HRKYI72M5XSZCBYAHQHR34FFR4Z6G4`

These instructions are just a guideline for what you should generally do. You may modify provided `docker-compose.yml` to accommodate your needs.
