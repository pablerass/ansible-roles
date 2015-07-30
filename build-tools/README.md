# Build Tools

Installs a set of build, test and emulation tools.

# Requirements

# Role Variables

# Dependencies

Uses the following roles:

* `android-sdk` with `android_sdk_mode = emulator`.

# Example Playbook

    - hosts: localhost
      roles:
         - { role: build-tools }
