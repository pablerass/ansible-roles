# Base users configuration

This role performs the following tasks:

1. Creates `admins` administrative group.
1. Configures `admins` group sudo privileges.
1. Creates all users defined by `default_users` variable list.

### Environment common variables

* `default_users` - Is the list of `name`, `group` dictionaries to be created.

By default this variables should be set througth `group vars` configuration
asigned to groups created for each infrastructure environment.
