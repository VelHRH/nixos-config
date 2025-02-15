After NixOS installation in your `~/` directory:

1. Copy config:
```
cd .config
git clone git@github.com:VelHRH/nixos-config.git
cd nixos-config/hosts
cp -r nixos <your_hostname>
cd <your_hostname>
cp /etc/nixos/hardware-configuration.nix ./
sudo nixos-rebuild switch --flake ./
home-manager switch --flake ./
```
2. Adjust flake.nix file. Change `user = "vel";` and `{ hostname = "nixos"; stateVersion = "24.11"; }` lines.

3. Rebuild: 

```
cd nixos-config
git add .
sudo nixos-rebuild switch --flake .
home-manager switch --flake .
```
![image](https://github.com/user-attachments/assets/a86266d1-e75f-4018-94e1-0af5b2107ea3)
![image](https://github.com/user-attachments/assets/55624f57-cbc0-4530-b799-87eff24ca3da)

