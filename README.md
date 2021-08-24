# Dotfiles
*hippity-hoppity, your dotfiles are now my property.*

## Acknowledgements
Forked from [FilipeMCruz/dotfiles](https://github.com/FilipeMCruz/dotfiles/).

Spotify theme from [4lgn/dotfiles](https://github.com/morpheusthewhite/spicetify-themes), Gruvbox Dribblish with modified side-bar color (aqua and orange, seriously?).

## Requirements
For running on Arch Linux, with an AMD CPU and Nvidia GPU.

Requires KDE Plasma.

## Install
Run `chmod +x dotfiles/home/scripts/.scripts/stow_all && dotfiles/home/scripts/.scripts/stow_all`.

This requires the `stow` package. Please install it with `sudo pacman -S stow`.

To customize which modules to load or not load, simply remove the associated directory before running `stow_all`.
`stow_all` may fail if dotfiles already exist in the user home directory.

Be sure to correct the `.gitconfig` file and change the user name and user email, and also the signing key ID.
Alternatively, remove the `git` module entirely.
