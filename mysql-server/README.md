# MySQL Server

Installs needed MySQL server packages.

## Role Variables

* `mysql_root_pass`. Can only be set the first time. If it is changed, the role
  fails.

# Example Playbook

    - hosts: servers
      roles:
         - { role: mysql-server }

    - hosts: servers
      roles:
         - { role: mysql-server, mysql_root_pass: "changeme" }

