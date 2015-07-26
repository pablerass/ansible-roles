# Base network configuration

Configures machine connection to basic infrastructure services.

## Role Variables

### Server specific variables

* `hostname` - If it's not specified, default _Ansible_ `inventory_hostname`
  variable is used. That value is taken from inventory alias.

### Environment common variables

* `dns_servers`.
* `default_gw`.
* `proxy_url`.
* `no_proxy` - Only applies when `proxy_url` is defined.

By default this variables should be set through `group vars` configuration
assigned to groups created for each infrastructure environment.

The default gateway is not changed if the machine belongs *"gw"* inventory
group.

## Pending

* Convert `dns_server` variable in a list to allow multiple DNS servers
  configuration.
