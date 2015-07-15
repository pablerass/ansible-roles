# MySQL Database

Creates a MySQL database with specified parameters.

## Role Variables

* `db_name`
* `db_user`
* `db_pass`
* `mysql_root_pass`
* `db_enconding` - default _utf8_.

## Dependencies

Uses `mysql-server` role.

## Example Playbook

    - hosts: servers
      roles:
         - { role: mysql-db, db_name: "db", db_user: "user",
                             db_pass: "pass", mysql_root_pass: "changeme" }

