# Frontend Engine

A tool for quickly installing various frontend frameworks without needing the underlying tech stack installed locally.

## Setup

Copy `example.env` to `.env` and change contents to fit your naming convention (you may need to update `docker-compose.yml` if you do).

Run `./scripts/build.sh` to build each frontend framework in its own container (and by each I mean react only at this time).


## Configure

Manage each frontends configuration from the `docker-compose.yml` file.
