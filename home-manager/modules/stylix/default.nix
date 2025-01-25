#TODO: get rid of stylix
{ pkgs, inputs, config, ... }: {
  imports = [ inputs.stylix.homeManagerModules.stylix ];

  stylix = {
    enable = true;
    polarity = "dark";
    base16Scheme = import ./scheme.nix;

    targets = {
      waybar.enable = false;
      hyprland.enable = false;
      hyprlock.enable = false;
      vscode.enable = false;
      wofi.enable = false;
    };

    cursor = {
      name = "DMZ-Black";
      size = 24;
      package = pkgs.vanilla-dmz;
    };

    fonts = {
      emoji = {
        name = "Noto Color Emoji";
        package = pkgs.noto-fonts-color-emoji;
      };
      monospace = {
        name = "JetBrains Mono";
        package = pkgs.jetbrains-mono;
      };
      sansSerif = {
        name = "Noto Sans";
        package = pkgs.noto-fonts;
      };
      serif = {
        name = "Noto Serif";
        package = pkgs.noto-fonts;
      };

      sizes = {
        terminal = 13;
        applications = 11;
      };
    };

    iconTheme = {
      enable = true;
      package = pkgs.papirus-icon-theme;
      dark = "Papirus-Dark";
      light = "Papirus-Light";
    };

    image = builtins.fetchurl {
      url = "https://images5.alphacoders.com/135/thumb-1920-1353829.png";
      sha256 = "0jyr6i17hsvdjx59m81h43301dcb6gsr62gnzsxs076i3yj7rd25";
    };
  };
}
