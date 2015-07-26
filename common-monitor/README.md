# Common Monitor

Installs common monitoring packages and configuration.

## Role Variables

* `nrpe_servers`: This role variable is designed to be asigned using
  group_vars.

## Example Playbook

    - hosts: servers
      roles:
         - { role: common-monitor, nrpe_servers: "192.168.33.40" }
