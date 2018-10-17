# TokenD Developer Edition

Quick way for running [Tokend](https://tokend.io) development environment with [Docker](https://www.docker.com)


## Requirements

* Docker
* Compose
* Linux/MacOS, Windows support is experimental and has known issues.


## Up and Running

Assuming you've just cloned this repository, the following steps will get you up and running in no time!

* `docker-compose run --rm core init` - initialize core instance with genesis block according to `configs/core.ini`
* `docker-compose up -d` - launch all services in background
* `docker-compose ports` - to see status of services and which ports are available

These instructions are just a guideline for what you should generally do. You may modify provided `docker-compose.yml` to accommodate your needs.

By default all data is persistent in mounted volumes, you should be fine stopping and removing the containers without worry.

## Resources

* [Knowledge base](https://tokend.gitbook.io/knowledge-base/)
* [API reference](http://tokend.gitlab.io/docs)



