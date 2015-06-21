# Xvfb

Installs and configures Xvfb as a daemon. Also configures `DISPLAY` environment
variable.

Xvfb stand for *X virtual framebuffer* and it is a X11 server which runs all its
graphics operations in memory without using an screen.

## Role Variables

* `xvfb_display`: By default is 0 but can be changed.

## Example Playbook

    - hosts: servers
      roles:
         - { role: xvfb }

## License

BSD
