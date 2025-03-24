{ pkgs, ... }: {
  home.packages = [ pkgs.code-cursor ];
  home.shellAliases = {
    code = "cursor . & disown";
  };
}