{
  nixpkgs.config.allowUnfree = true;
  imports = [
    ./steam.nix
  ];
}
