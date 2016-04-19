# PotgeSQL Database

## Requirements

postgres

## Role Variables

### Compulsory

* `db_name`
* `db_user`
* `db_pass`

At this time, only allows md5 Postgres authentication.

### Optionals

* `db_remote_clients`

## Example Playbook

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: postgresql-db, db_name: db, db_user: dbuser, db_pass: dbpass}
