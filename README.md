# dotfiles

dotfiles is a set of scripts and configurations to set up macOS, Arch, or Ubuntu with the applications I develop with, and programs I use most.

My dotfiles are managed by [fresh](http://freshshell.com).

## Requirements

1. A computer running macOS, Arch Linux, or Ubuntu.


## Post-install

### GPG

You'll need the ID of the key you're working with. You can list keys on a system with:

```sh
gpg --list-secret-keys --keyid-format=LONG
```

Now, you need to import your key. If you're getting it from another system, you can export it with:

```sh
gpg --export-secret-keys <YOUR KEY HERE> > my-private-key.asc
```

```sh
# Import the key
gpg --import my-private-key.asc

# Give the key an appropriate trust level
gpg --edit-key <YOUR KEY HERE>

# Configure git to use the key for commit signing
git config --global gpg.program gpg2
git config --global user.signingkey <YOUR KEY HERE>
```
