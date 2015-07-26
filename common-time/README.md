# Common Time

Configures common time related configuration.

* Timezone.
* NTP Server if defined.

## Variables

Default timezone is 'Etc/GMT', can be changed specifying {{ timezone }}
variable.

### Environment common variables

* `ntp_servers`.

## Example Playbook

    - hosts: servers
      roles:
         - { role: common-time }

