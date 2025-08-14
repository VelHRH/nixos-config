{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    fpc
  ];
}