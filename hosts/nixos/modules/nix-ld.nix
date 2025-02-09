# needed to run dynamically linked pure-Linux executables
{
  programs.nix-ld = {
    enable = true;
  };
}