# Oracle JVM

Installs specified version of Oracle Java Virtual Machine.

## Role Variables

* `version` - The version to install. By default is _8_.
* `set_default` - If must be set as default.

## Example Playbook

    - hosts: servers
      roles:
         - { role: oracle-jvm, version: 7, set_default: true }

## License

BSD
