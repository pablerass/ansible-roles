# Tomcat 7

Tomcat 7 installation and configuration role.

## Requirements

* `oracle-jvm`

## Role Variables

* `tomcat_context`: By default is empty to use the root context.

Optional role variables:

* `tomcat_enable_debug`: False by default.
* `tomcat_debug_port`
* `spring_profile`

## Examples

The role can be set with the following setup:

    - { role: tomcat7, tomcat_context: test, tomcat_enable_debug: yes }
