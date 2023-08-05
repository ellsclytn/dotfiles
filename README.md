# dotfiles

dotfiles is a set of scripts and configurations to set up Arch Linux with the applications I develop with, and programs I use most.

My dotfiles are managed by [dotter](https://github.com/SuperCuber/dotter).

## Requirements

1. A computer capable of running Arch Linux

## Get started

1. Boot into an Arch Live boot
2. Download `setup/live`
3. Run it
4. Reboot into the newly installed system, and log in.
5. Clone this repo into `~/.dotfiles`
6. From `~/.dotfiles`, run `./setup/software`

## Post-install

### Per-device configuration

The installation script will assume a personal-use desktop by default. This can be changed later for work and/or laptop specific configuration by editing `.dotter/local.toml`. Just modify the `packages` to include the following:

- `"workstation"`
- Either `"laptop"` or `"desktop"`
- `"work"` (optional)

### YubiKey

My setup is heavily inspired by the amazing https://github.com/drduh/YubiKey-Guide. If my instructions below don't work, there's probably a solution in that repo.

Plug in your YubiKey and run `gpg --card-status`. Verify that the information shown is correct.

#### GPG

First, import your public key. You should have this stored all over the place (it's public):

```sh
gpg --import /path/to/key.pub
```

Now trust it (assuming the output of the previous command looked good):

```sh
gpg --edit-key 0xSOMEBIGKEYID

gpg> trust
Your decision? 5
Do you really want to set this key to ultimate trust? (y/N) y

gpg> save
```

### System-level files

Managed with Ansible. `ansible-playbook ansible/playbook.yml -K`
