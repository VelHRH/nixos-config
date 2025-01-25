{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    jetbrains-mono
    noto-fonts
    noto-fonts-emoji
    fira-code
    nerd-fonts.jetbrains-mono
  ];

  fonts.fontconfig.enable = true;
}
