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
    zoom-us

    # CLI utils
    bottom # Resource monitor
    brightnessctl # Brightness control
    ffmpeg
    grimblast # Screenshot tool
    imagemagick
    microfetch
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
    unzip
    xdg-desktop-portal-gtk
    xdg-desktop-portal-hyprland
  ];
}
