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
Run `chmod +x dotfiles/home/scripts/.scripts/stow_all && dotfiles/home/scripts/.scripts/stow_all && chmod +x $HOME/.scripts/chmod_scripts && $HOME/.scripts/chmod_scripts`.

To break it down,

- We first give `stow_all` executable permissions for all user groups.
- We run `stow_all` to create symbolic links between the dotfiles repository and their destinations in the home directory.
- We then give `chmod_scripts` executable permissions for all user groups.
- Finally, we run `chmod_scripts` to give all scripts in the `.scripts` directory executable permissions.

You may additionally want to run `.scripts/pkglist_hook` and `.scripts/nvidia_hook` to create `pacman` hooks for,

- Creating a list of installed packages, written to file `/etc/pkglist.txt`, every time packages are installed/removed.
- Regenerating the initial ramdisk with `mkinitcpio` every time the `nvidia` package is modified/installed/removed.

The latter is not recommended if you aren't using a Nvidia GPU on your machine.

This requires the `stow` and `python` package. Please install them with `sudo pacman -S stow python`.

To customize which modules to load or not load, simply remove the associated directory before running `stow_all`.
`stow_all` may fail if dotfiles already exist in the user home directory.

Please note, as mentioned in the second stop, the `stow`-based installation method creates symbolic links.
Don't delete the dotfiles repository directory, this'll take the actual configurations with it when removed.

### Git Configuration
Be sure to correct the `.gitconfig` file and change the user name and user email, and also the signing key ID.
Alternatively, remove the `git` module entirely.

### GRUB Theme
To finish applying the GRUB theme, you'll have to edit your GRUB configuration file (usually `/etc/default/grub`).
Set `GRUB_THEME` to `/boot/grub/themes/gruvbox/theme.txt`. Then regenerate your boot configuration with `grub-mkconfig -o /boot/grub/grub.cfg`.

### Conky
It's recommended to use a dark wallpaper for stats to be readable.

Try using the included `gruvbox-waterfall-modded.jpg` image as your wallpaper.

If your CPU's max turbo frequency is higher than 6 gigahertz, you'll need to edit `.scripts/get_freq_percent` and change the `MAX_TURBO_FREQUENCY_GHZ` variable.
The majority of consumer-grade machines will probably not require this modification, and only applies to enthusiast users and overclockers.

The CPU frequency presented is the average of all cores, the default configuration Conky generates only pulls frequency data from the first core.

If your main network interface is not `wlan0`, please change the Conky configuration at `.config/conky/conky.conf`, replacing all instances of `wlan0` with your network interface's name.
