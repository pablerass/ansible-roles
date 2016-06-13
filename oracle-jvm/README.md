# Oracle JVM

Installs specified version of Oracle Java Virtual Machine.

## Role Variables

* `oracle_jvm_versions` - The versions to install. By default is _8_.
* `oracle_jvm_default_version` - The default version if multiple ones are
  installed.

## Example Playbook

    - hosts: servers
      roles:
         - { role: oracle-jvm, oracle_jvm_versions: [ 7, 8 ],
                               oracle_jvm_default_version: 7 }

## License

BSD
