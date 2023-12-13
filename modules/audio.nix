# modules/audio.nix

{ config, pkgs, lib, ... }:

{
  # Enable pipewire
  sound.enable = true;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    jack.enable = true;
  };
  services.pipewire.wireplumber.enable = true;
}
