# dotfiles

dotfiles is a set of scripts and configurations to set up macOS, Arch, or Ubuntu with the applications I develop with, and programs I use most.

My dotfiles are managed by [fresh](http://freshshell.com).

## Requirements

1. A computer running macOS, Arch Linux, or Ubuntu.

## Get started

### macOS

1. `xcode-select --install` (and wait for it to finish)
2. `./setup/start`

### Everyone else

1. `./setup/start`

## Post-install

### YubiKey GPG & SSH

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

#### SSH

Very similar to the GPG process. You import a key, and put it in a place:

1. Check the output of `ssh-add -L`. You should see one (and only one) entry ending in `cardno:000612354678` (those numbers will be specific to your key).
2. `ssh-add -L | grep "cardno:000612354678" > ~/.ssh/id_rsa_yubikey.pub`
