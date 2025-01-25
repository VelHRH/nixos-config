{
  programs.eza = {
    enable = true;
    enableZshIntegration = true;
    colors = "always";
    git = true;
    icons = "always";
    extraOptions = [
      "--group-directories-first"
      "--header"
    ];
  };
}
