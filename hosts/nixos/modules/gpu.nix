{ config, pkgs, ... }:

{
  hardware.opengl = {
    enable = true;
    extraPackages = with pkgs; [
      intel-media-driver  
      libva
      libvdpau-va-gl
    ];
  };
}