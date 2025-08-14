{ pkgs, ... }: {
  environment.systemPackages = [ pkgs.brightnessctl ];

  services.udev.extraRules = let
    brightnessScript = pkgs.writeShellScript "change-brightness" ''
      #!${pkgs.bash}/bin/bash
      if [ "$1" = "ac" ]; then
        ${pkgs.brightnessctl}/bin/brightnessctl -q set 80%
      else
        ${pkgs.brightnessctl}/bin/brightnessctl -q set 50%
      fi
    '';
  in ''
    # Set brightness based on power supply status
    SUBSYSTEM=="power_supply", ATTR{online}=="0", RUN+="${brightnessScript} battery"
    SUBSYSTEM=="power_supply", ATTR{online}=="1", RUN+="${brightnessScript} ac"
  '';
} 