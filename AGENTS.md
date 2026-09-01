# AGENTS.md — mysqldump

## What this is
A minimal Docker image based on Alpine (~5MB) for dumping and restoring MySQL/MariaDB databases, with mysql/mariadb-dump as the entrypoint.

## Stack
- Docker (Alpine base)
- MariaDB client (`mariadb-dump`)

## Build
```bash
make build
```

## Run
```bash
docker run -i --rm --net=host myridia/mysqldump -h HOST -u USER -pPASS DBNAME | gzip > dump.sql.gz
```

## Structure
- `Dockerfile` — alpine + mariadb-client, ENTRYPOINT mariadb-dump
- `Makefile` — `build` target
- `logo.svg` — project logo

## Conventions
- No comments in code unless asked.
- No credentials baked in; passwords passed at runtime.
