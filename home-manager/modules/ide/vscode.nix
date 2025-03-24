{ pkgs, ... }: 
let
  colors = import ./theme;
in
{
  programs.vscode = {
    enable = true;
    package = pkgs.vscode;
    extensions = with pkgs.vscode-extensions; [
      dracula-theme.theme-dracula
      # TODO: move all extensions to config
    ];

    userSettings = {
      "workbench.colorTheme" = "Dracula Theme";
      "window.zoomLevel" = 1;

      "files.enableTrash" = true;
      "explorer.confirmDelete" = false;
      "javascript.updateImportsOnFileMove.enabled" = "always";

      "workbench.editor.enablePreview" = false;

      "editor.tabSize" = 2;
      "editor.insertSpaces" = true;
      "editor.detectIndentation" = false;

      "editor.formatOnSave" = true;
      "editor.codeActionsOnSave" = {
        "source.fixAll.eslint" = "always";
      };
      "[javascript]" = { "editor.defaultFormatter" = "esbenp.prettier-vscode"; };
      "[typescript]" = { "editor.defaultFormatter" = "esbenp.prettier-vscode"; };
      "[json]" = { "editor.defaultFormatter" = "esbenp.prettier-vscode"; };
    };
     keybindings = [
      {
        "key" = "ctrl+d";
        "command" = "editor.action.copyLinesDownAction";
        "when" = "editorTextFocus";
      }

      {
        "key" = "ctrl+numpad_divide";
        "command" = "editor.action.commentLine";
        "when" = "editorTextFocus && !editorReadonly";
      }

      {
        "key" = "ctrl+alt+a";
        "command" = "editor.action.changeAll";
        "when" = "editorTextFocus";
      }
    ];
  };
}
