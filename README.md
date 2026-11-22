# Thinkpad dotfiles

Specifically for my thinkpad.

For the PC-specific dotfiles, see https://github.com/r2ality/main-nixos-dotfiles

This config includes:

1. X11 (and Wayland Qtile)
2. LightDM
3. A few configurations specifically for the thinkpad (shown below)
4. And others

## This config supports:

Firmware updates (fwupd) and SSD trim

Power management with TLP, thermald and upower, and a battery charge limit of 75–80% (the BAT0 thresholds are ThinkPad-specific and ignored if your model doesn’t support them)

Suspend on lid close

Touchpad (tap-to-click, natural scrolling) and TrackPoint with wheel emulation

Bluetooth with Blueman

Touchscreen

Added packages: brightnessctl, playerctl, acpi, xinput and powertop

Systemd boot (can be changed in configurations.nix)

To install, edit configurations.nix and add experimental features, "nix-command" and "flake".

## Learn experimental commands

https://wiki.nixos.org/wiki/Nix_(command)

https://wiki.nixos.org/wiki/Flakes

## Install

After preparing your disks, or using the graphical install, move all the nixos files to /etc/nixos

After moving the files, type this:

```bash
sudo nixos-rebuild switch
```

After that, you can simply edit the config files, move Qtile folder to ~/.config/qtile/
Then type

```bash
sudo nixos-rebuild switch --flake /etc/nixos#<your flake name>
```

It'll take a bit. After that, restart, you should see lightdm, or your preffered display manager.

Login and you should be on Qtile. (or your chosen WM)
