{ pkgs, ... }: {
  nixpkgs.config = {
    allowUnfree = true;
    permittedInsecurePackages = [ "beekeeper-studio-5.2.9" ];
  };

  home.packages = with pkgs; [
    # Desktop apps
    discord
    google-chrome
    libreoffice-qt
    slack
    telegram-desktop
    vlc
    zoom-us
    kitty

    # CLI utils
    ascii
    bottom # Resource monitor
    brightnessctl # Brightness control
    ffmpeg
    grimblast # Screenshot tool
    imagemagick
    microfetch
    ngrok
    pywal # Color schemes generation
    showmethekey
    unzip
    usbutils
    wget
    wl-clipboard
    yarn 
    yt-dlp 
    zip

    # Coding
    bun
    deno
    go
    mongodb-compass
    nodejs
    sbt
    scala
    typescript

    # Other
    bemoji
    libnotify
    libsForQt5.xwaylandvideobridge
    nix-prefetch-scripts
    unrar
    unzip
    xdg-desktop-portal-gtk
    xdg-desktop-portal-hyprland
  ];
}
