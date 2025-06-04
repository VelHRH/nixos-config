{ lib, ... }:
let
  colors = import ./theme/pink.nix;
in
{
  programs.kitty = {
    enable = true;
    extraConfig = ''
      copy_on_select clipboard
      enable_audio_bell no
      window_padding_width 5
      
      # Highlight color
      selection_foreground #${colors.background}
      selection_background #${colors.text}
    '';
  };
}    

