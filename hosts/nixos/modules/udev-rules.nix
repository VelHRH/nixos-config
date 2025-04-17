{ config, lib, pkgs, ... }:

{
  services.udev.extraRules = ''
    # Уменьшить яркость до 50% при отключении от сети
    SUBSYSTEM=="power_supply", ATTR{online}=="0", \
    RUN+="${pkgs.brightnessctl}/bin/brightnessctl set 50%"

    # Увеличить яркость до 80% при подключении к сети
    SUBSYSTEM=="power_supply", ATTR{online}=="1", \
    RUN+="${pkgs.brightnessctl}/bin/brightnessctl set 80%"
  '';
} 