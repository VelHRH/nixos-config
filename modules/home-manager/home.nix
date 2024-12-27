{ pkgs, ... }:

{
  home = {
    username = "vel";
    homeDirectory = "/home/vel";
    stateVersion = "24.11";
  };

  home.packages = with pkgs; [
    telegram-desktop
    vscode
  ];

  programs.git = {
    enable = true;
    userName = "VelHRH";
    userEmail = "yrchenko644@gmail.com";
  };
}
