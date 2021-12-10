# Dotfiles
*hippity-hoppity, your dotfiles are now my property.*

## Acknowledgements
Forked from [FilipeMCruz/dotfiles](https://github.com/FilipeMCruz/dotfiles/).

Spotify theme from [4lgn/dotfiles](https://github.com/morpheusthewhite/spicetify-themes), Gruvbox Dribblish.

GRUB theme from [adnan/grub2-gruvbox](https://git.fs.lmu.de/adnan/grub2-gruvbox) which seems to be a modified version of [x4121/grub-gruvbox](https://github.com/x4121/grub-gruvbox) and is MIT licensed.

FCITX5 theme from [ayamir/fcitx5-gruvbox](https://github.com/ayamir/fcitx5-gruvbox). Shows up when using 中文拼音, be sure to install proper non-latin font packages, otherwise you'll end up with unicode placeholder characters.
Noto (for simplified Chinese, Mandarin) is decently modern, the package name is `noto-fonts-sc`.

`bonsai` shell toy from [jallbrit/bonsai.sh](https://gitlab.com/jallbrit/bonsai.sh/-/tree/master).

Icon theme from [adhe/gruvboxplasma](https://www.opencode.net/adhe/gruvboxplasma), replacing original author's icon-set.

## Requirements
For running on Arch Linux or Debian 11 (Bullseye).

Requires KDE Plasma. Please remove the GRUB directory if you aren't using GRUB as your bootloader.

[Neofetch is mandatory.](https://github.com/dylanaraps/neofetch) Do not resist. (if you do want to use something else though, edit `.scripts/rcbanner` and replace `neofetch` with your favorite flashy system information tool)

Installation (and a bunch of customzations) requires the `stow` and `python` package. Please install them with `sudo pacman -S stow python` on Arch or `sudo apt install python3 stow` on Debian.

## Install
Run `chmod +x dotfiles/home/scripts/.scripts/stow_all && dotfiles/home/scripts/.scripts/stow_all && chmod +x $HOME/.scripts/chmod_scripts && $HOME/.scripts/chmod_scripts`.

To break it down,

- We first give `stow_all` executable permissions for all user groups.
- We run `stow_all` to create symbolic links between the dotfiles repository and their destinations in the home directory.
- We then give `chmod_scripts` executable permissions for all user groups.
- Finally, we run `chmod_scripts` to give all scripts in the `.scripts` directory executable permissions.

To customize which modules to load or not load, simply remove the associated directory before running `stow_all`.
`stow_all` may fail if dotfiles already exist in the target directory.

Please note, as mentioned in the second stop, the `stow`-based installation method creates symbolic links.
Don't delete the dotfiles repository directory, this'll take the actual configurations with it when removed.

### Arch-Specific
You may additionally want to run `.scripts/pkglist_hook` and `.scripts/nvidia_hook` to create `pacman` hooks for,

- Creating a list of installed packages, written to file `/etc/pkglist.txt`, every time packages are installed/removed.
- Regenerating the initial ramdisk with `mkinitcpio` every time the `nvidia` package is modified/installed/removed.

The latter is not recommended if you aren't using a Nvidia GPU on your machine.

To restore the package list, run `~/.scripts/pkglist_restore`.

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

### Glava
Doesn't autostart very well, however otherwise works fine.

Works best with `gruvbox-waterfall-modded.jpg` or `gruvbox-waterfall.jpg`, and other light wallpapers, otherwise the audio bars won't be visible.

Alternatively, you can change the bar color to fit dark backgrounds by editing `~/.config/glava/bars.glsl` and replacing `#282828` with `#ebdbb2`.

### Bash
The `.bashrc` file contains aliases for the following commands,
* [This wonderful command](https://github.com/nvbn/thefuck).
* [futurecandy](https://dreamerslegacy.xyz/git/perpetualCreations/futurecandy).

Feel free to remove theses aliases if you don't plan using said wonderful commands yourself.

Also the RC file runs `neofetch` every time the shell starts. Enjoy.

### ZSH
Has the same aliases as the Bash RC file, and also runs the same banner script.

However! Has a bunch more enabled plugins and tid-bits, via [Oh-My-ZSH](https://ohmyz.sh/). You'll need to install the framework separately, with their one-line install script.

The default theme is `agnoster` and requires additional setup. See [wiki instructions for the theme](https://github.com/ohmyzsh/ohmyzsh/wiki/Themes).

### Spotify
Run `~/.scripts/spicetify_dotfiles_setup` after installing Spicetify and the Spotify client.

See [Spicetify's instructions for installation](https://github.com/khanhas/spicetify-cli/wiki/Installation).

### Navi
Includes nice-to-have cheatsheets in the terminal. [Installation instructions at their repository](https://github.com/denisidoro/navi).

Also includes a cheatsheet for commands in `~/.script`, in case you forgot what they do.
