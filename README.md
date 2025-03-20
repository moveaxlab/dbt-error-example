# DEMO PROJECT FOR DBT TEMP TABLES CLEANUP ERROR
## System Dependencies
- sqlplus
- docker
## Setup
if you already have a python dev environment you can skip [Install Mise](#install-mise) and gor directly to [Install project](#install-project)
if you need to set up the python environment rapidly you can leverage the `.mise.toml` as we do
### Install Mise
in order to install mise follow [these](https://mise.jdx.dev/getting-started.html) instructions
then you can just cd into the repo folder and:
```shell
mise trust .mise.toml
mise install
```
### Install project
if you already have a python dev environment you can install the project with
```shell
poetry install --no-root
```
## Error Replication Procedure
to replicate the bug you just
1. start the database container (it may take a while)
```shell
docker compose up
```
2. create the source and target table
```shell
mise run db:execute tmp-tables-error-demo.init.sql
```
3. run the dbt model
```shell
dbt run --models target_table
```