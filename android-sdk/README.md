# Android SDK Role

Installs Android SDK and updates different components depending on the
specified installation type.

## Variables

Depending on which kind of installation do you require, you can set the
variable `mode` to the following values:

* `basic` - Installs basic SDK files without additional tools.
* `compiler` - Installs compiler SDK components and tools.
* `emulator` - Installs emulator SDK system images.

## Usage

Install basic Android SDK:

    - { role: android-sdk }

Install emulator:

    - { role: android-sdk, mode: emulator }

Install compiler:

    - { role: android-sdk, mode: compiler }

## License

BSD