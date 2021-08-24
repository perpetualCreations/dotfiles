# Dotfiles
*hippity-hoppity, your dotfiles are now my property.*

## Acknowledgements
Forked from [FilipeMCruz/dotfiles](https://github.com/FilipeMCruz/dotfiles/).

Spotify theme from [4lgn/dotfiles](https://github.com/morpheusthewhite/spicetify-themes), Gruvbox Dribblish with modified side-bar color (aqua and orange, seriously?).

GRUB theme from [adnan/grub2-gruvbox](https://git.fs.lmu.de/adnan/grub2-gruvbox).

## Requirements
For running on Arch Linux.

Requires KDE Plasma. Please remove the GRUB directory if you aren't using GRUB as your bootloader.

## Install
Run `chmod +x dotfiles/home/scripts/.scripts/stow_all && dotfiles/home/scripts/.scripts/stow_all`.

This requires the `stow` package. Please install it with `sudo pacman -S stow`.

To customize which modules to load or not load, simply remove the associated directory before running `stow_all`.
`stow_all` may fail if dotfiles already exist in the user home directory.

### Git Configuration
Be sure to correct the `.gitconfig` file and change the user name and user email, and also the signing key ID.
Alternatively, remove the `git` module entirely.

### GRUB Theme
To finish applying the GRUB theme, you'll have to edit your GRUB configuration file (usually `/etc/default/grub`).
Set `GRUB_THEME` to `/boot/grub/themes/gruvbox/theme.txt`. Then regenerate your boot configuration with `grub-mkconfig -o /boot/grub/grub.cfg`.
