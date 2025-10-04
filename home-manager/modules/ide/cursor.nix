{ pkgs, inputs, ... }: {
  home.packages = [ (import inputs.nixpkgs {
    inherit (pkgs) system;
    config.allowUnfree = true;
  }).code-cursor ];
  home.shellAliases = {
    code = "cursor . & disown";
  };
}