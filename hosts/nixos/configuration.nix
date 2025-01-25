{ pkgs, stateVersion, hostname, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./modules
  ];

  environment.systemPackages = with pkgs; [ 
    home-manager 
  ];

  networking.hostName = hostname;

  system.stateVersion = stateVersion;
}

