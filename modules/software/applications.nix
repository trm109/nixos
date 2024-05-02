{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    kitty
    chromium
    (prismlauncher.override { jdks = [ jdk8 jdk17 ]; })
    vesktop
    spotify
    unstable.zoom-us
  ];
}
