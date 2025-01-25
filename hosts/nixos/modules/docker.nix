{ pkgs, lib, user, ... }: {
  virtualisation.docker = {
    enable = true;
  };

  environment.systemPackages = with pkgs; [
    docker-compose
  ];

  systemd.services.docker.wantedBy = lib.mkForce []; # Disable Docker Deamon autostart
}