{ pkgs, ... }:
let
  hexToRgb = import ../theme/utils/hex-to-rgb.nix;
  colors = import ../theme;
in
{
  programs.hyprlock = {
    enable = true;
    settings = {
      general = {
        disable_loading_bar = true;
        grace = 10;
        hide_cursor = true;
        no_fade_in = false;
      };

      label = [
        {
          text = "$TIME";
          font_size = 96;
          font_family = "JetBrains Mono";
          color = hexToRgb colors.primary-pale;
          position = "0, 100";
          halign = "center";
          walign = "center";
          shadow_passes = 1;
        }
        {
          text = "$LAYOUT"; 
          font_size = 16;
          font_family = "JetBrains Mono";
          color = hexToRgb colors.primary-pale;
          position = "0, -450";
          halign = "center";
          walign = "center";
          shadow_passes = 1;
        }
      ];

      background = [
        {
          path = "screenshot";
          blur_passes = 3;
          blur_size = 8;
        }
      ];

      input-field = [
        {
          size = "200, 50";
          position = "0, -80";
          monitor = "";
          dots_center = true;
          font_color = hexToRgb colors.primary-pale;
          inner_color = hexToRgb colors.background;
          outer_color = hexToRgb colors.grey-dark;
          outline_thickness = 5;
          placeholder_text = "Enter password";
          shadow_passes = 1;
          font_family = "JetBrains Mono";
        }
      ];
    };
  };
}
