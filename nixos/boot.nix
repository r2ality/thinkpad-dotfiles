{ pkgs, ... }:
{
boot = {
# Graphical boot splash
plymouth = {
enable = true;
theme = "spinner";

# Optional custom logo
logo = "${pkgs.nixos-icons}/share/icons/hicolor/48x48/apps/nix-snowflake-white.png";
};

# Hide most boot messages
consoleLogLevel = 3;

kernelParams = [
"quiet"
"splash"
"rd.udev.log_level=3"
"rd.systemd.show_status=auto"
];
};
}
