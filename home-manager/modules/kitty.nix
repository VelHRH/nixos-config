{ lib, ... }: {
  programs.kitty = {
    enable = true;
    extraConfig = ''
      copy_on_select clipboard
      enable_audio_bell no
      window_padding_width 5
    '';
  };

}    
