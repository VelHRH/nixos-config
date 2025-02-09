{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # Desktop apps
    beekeeper-studio
    discord
    google-chrome
    slack
    telegram-desktop
    vlc

    # CLI utils
    bottom # Resource monitor
    ffmpeg
    grimblast # Screenshot tool
    imagemagick
    microfetch
    pywal # Color schemes generation
    showmethekey
    unzip
    wget
    wl-clipboard
    yarn
    yt-dlp 
    zip

    # Coding
    bun
    jetbrains.idea-ultimate
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
    xdg-desktop-portal-gtk
    xdg-desktop-portal-hyprland
  ];
}
