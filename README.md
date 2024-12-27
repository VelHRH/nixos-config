In your `~/` directory:
```
cd .config
git clone git@github.com:VelHRH/nixos-config.git
cd nix-config
sudo nixos-rebuild switch --flake ./
home-manager switch --flake ./
```
