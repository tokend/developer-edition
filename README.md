# TokenD Developer Edition

Quick way for running [Tokend](https://tokend.io) development environment with [Docker](https://www.docker.com)


## Requirements

* [Docker](https://www.docker.com/get-started)
* [Compose](https://docs.docker.com/compose/install/)
* Linux/MacOS, Windows support is experimental and has known issues.

## Setting up

 * Check for new updates. Make sure Docker is up to date.
 
 * For **Linux** users, create a group to manage Docker as a non-root user. Check [guide](https://docs.docker.com/install/linux/linux-postinstall/)

 * Install [docker-compose](https://docs.docker.com/compose/install/)

## Up and Running

Assuming you've just cloned this repository, the following steps will get you up and running in no time!

* `docker-compose pull` just in case, to be sure you have latest versions of containers
* `docker-compose run --rm core init` to initialize core instance with genesis block according to `configs/core.ini`
* `docker-compose up -d` to launch all services in background, after it finishes you should be able to access web client at [http://localhost:8060](http://localhost:8060) and admin dashboard at [http://localhost:8070](http://localhost:8070) default seed for login is `SAMJKTZVW5UOHCDK5INYJNORF2HRKYI72M5XSZCBYAHQHR34FFR4Z6G4`
* `docker-compose ps` to see status of services and which ports are available

These instructions are just a guideline for what you should generally do. You may modify provided `docker-compose.yml` to accommodate your needs.

By default all data is persistent in mounted volumes, you should be fine stopping and removing the containers without worry. But if for any reason you want to start over just run `docker-compose down -v` do clean up any persistent state.

## Bootstraping your environment

For testing or development purposes it might be useful to bootstrap your environment to predefined state. That's where `initscripts` come in handy!
Some useful tasks are already included in `tasks` directory which you could adapt to your own needs.

You could start tickering with `docker-compose run initscripts tasks/common.hcl` which should get you environment with sane defaults and few tradeable assets.
After that if you feel lonely running `docker-compose run initscripts tasks/users.hcl` will create Alice and Bob accounts with some tokens ready to trade! Task files should have details and hints about which is happening under the hood.

So now you're able to login as Alice and Bob by using `alice@mail.com` and `bob@mail.com` for both email and password. To sign-up to the admin-client, use this secret seed: `SAMJKTZVW5UOHCDK5INYJNORF2HRKYI72M5XSZCBYAHQHR34FFR4Z6G4`


## Known Issues

* clients are unable to access private documents due to limitations of S3v4 signature method. One of the workarounds might be set add `127.0.0.1    storage` to your hosts file.

## Resources

* [Knowledge base](https://tokend.gitbook.io/knowledge-base/)
* [API reference](http://tokend.gitlab.io/docs)
