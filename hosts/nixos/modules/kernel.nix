{ pkgs, ... }: {
  boot.kernelPackages = pkgs.linuxPackages_zen;
}
