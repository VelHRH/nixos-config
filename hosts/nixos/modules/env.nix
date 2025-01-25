{
  environment.sessionVariables = rec {
    TERMINAL = "kitty";
    XDG_BIN_HOME = "$HOME/.local/bin";
    PATH = [
      "${XDG_BIN_HOME}"
    ];
  };
}
