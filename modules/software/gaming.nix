{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    steam
    steam-run
    protonup-qt
    mangohud
    gamemode
  ];
  # Input Remapper 
  services.input-remapper.enable = true;
  services.input-remapper.package = pkgs.unstable.input-remapper;
}
