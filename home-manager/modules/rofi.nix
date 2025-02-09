{ pkgs, config, ...}: 
let
  colors = import ./theme;
in 
{
  xdg.configFile."rofi/config.rasi".text = ''
    /*****----- Configuration -----*****/
    configuration {
        show-icons:                 true;
        display-drun:               " ";
        display-run:                 " ";
        display-filebrowser:         " ";
        display-window:              " ";
        drun-display-format:        "{name}";
        window-format:              "{w}{c}";
        display-emoji: "🔎 ";
    }

    /*****----- Global Properties -----*****/
    * {
        active-background: #${colors.primary};
        active-foreground: #${colors.text};
        normal-background: #${colors.background};
        normal-foreground: #${colors.text};
        urgent-background: #${colors.error};
        urgent-foreground: #${colors.text};

        alternate-active-background: #${colors.background};
        alternate-active-foreground: #${colors.text};
        alternate-normal-background: #${colors.background};
        alternate-normal-foreground: #${colors.text};
        alternate-urgent-background: #${colors.background};
        alternate-urgent-foreground: #${colors.text};

        selected-active-background: #${colors.error};
        selected-active-foreground: #${colors.text};
        selected-normal-background: #${colors.primary};
        selected-normal-foreground: #${colors.text};
        selected-urgent-background: #${colors.yellow};
        selected-urgent-foreground: #${colors.text};

        background-color: #${colors.background};
        background: #${colors.background};
        foreground: #${colors.text};
        border-color: #${colors.background};
        spacing: 2;
    }

    #window {
        background-color: @background;
        border: 0;
        padding: 2.5ch;
        transparency: "real";
    }

    #mainbox {
        border: 0;
        padding: 0;
    }

    #message {
        border: 2px 0px 0px;
        border-color: @border-color;
        padding: 1px;
    }

    #textbox {
        text-color: @foreground;
    }

    #inputbar {
        children:   [ prompt,textbox-prompt-colon,entry,case-indicator ];
    }

    #textbox-prompt-colon {
        expand: false;
        str: ":";
        margin: 0px 0.3em 0em 0em;
        text-color: @normal-foreground;
    }

    #listview {
        fixed-height: 0;
        border: 2px 0px 0px;
        border-color: @border-color;
        spacing: 2px;
        scrollbar: true;
        padding: 2px 0px 0px;
    }

    #element {
        border: 0;
        padding: 1px;
    }

    #element.normal.normal {
        background-color: @normal-background;
        text-color: @normal-foreground;
    }

    #element.normal.urgent {
        background-color: @urgent-background;
        text-color: @urgent-foreground;
    }

    #element.normal.active {
        background-color: @active-background;
        text-color: @active-foreground;
    }

    #element.selected.normal {
        background-color: @selected-normal-background;
        text-color: @selected-normal-foreground;
    }

    #element.selected.urgent {
        background-color: @selected-urgent-background;
        text-color: @selected-urgent-foreground;
    }

    #element.selected.active {
        background-color: @selected-active-background;
        text-color: @selected-active-foreground;
    }

    #element.alternate.normal {
        background-color: @alternate-normal-background;
        text-color: @alternate-normal-foreground;
    }

    #element.alternate.urgent {
        background-color: @alternate-urgent-background;
        text-color: @alternate-urgent-foreground;
    }

    #element.alternate.active {
        background-color: @alternate-active-background;
        text-color: @alternate-active-foreground;
    }

    #scrollbar {
        width: 4px;
        border: 0;
        handle-width: 8px;
        padding: 0;
    }

    #sidebar {
        border: 2px 0px 0px;
        border-color: @border-color;
    }

    #button {
        text-color: @normal-foreground;
    }

    #button.selected {
        background-color: @selected-normal-background;
        text-color: @selected-normal-foreground;
    }

    #inputbar {
        spacing: 0;
        text-color: @normal-foreground;
        padding: 1px;
    }

    #case-indicator {
        spacing: 0;
        text-color: @normal-foreground;
    }

    #entry {
        spacing: 0;
        text-color: @normal-foreground;
    }

    #prompt {
        spacing: 0;
        text-color: @normal-foreground;
    }
    * {
        font: "JetBrains Mono Nerd Font 16px";
    }

    /*****----- Main Window -----*****/
    window {
        transparency:                "real";
        location:                    center;
        anchor:                      center;
        fullscreen:                  true;
        x-offset:                    0px;
        y-offset:                    0px;
        width:                       100%;
        height:                      100%;
        enabled:                     true;
        margin:                      0px;
        padding:                     0px;
        background-color:            @background;
        cursor:                      "default";
    }

    /*****----- Main Box -----*****/
    mainbox {
        enabled:                     true;
        spacing:                     10px;
        margin:                      0px;
        padding:                     20px;
        border:                    	 0px solid;
        border-radius:               0px 0px 0px 0px;
        border-color:                @selected;
        background-color:            transparent;
        children:                    [ "inputbar", "listview" ];
    }

    /*****----- Inputbar -----*****/
    inputbar {
        enabled:                     true;
        spacing:                     10px;
        margin:                      0px;
        padding:                     15px;
        border:                      0px solid;
        border-radius:               12px;
        border-color:                @selected;
        background-color:            transparent;
        text-color:                  @foreground;
        children:                    [ "prompt", "entry" ];
    }

    prompt {
        enabled:                     true;
        background-color:            inherit;
        text-color:                  inherit;
    }
    textbox-prompt-colon {
        enabled:                     true;
        expand:                      false;
        str:                         "::";
        background-color:            inherit;
        text-color:                  inherit;
    }
    entry {
        enabled:                     true;
        background-color:            inherit;
        text-color:                  inherit;
        cursor:                      text;
        placeholder:                 "Search...";
        placeholder-color:           inherit;
    }

    /*****----- Listview -----*****/
    listview {
        enabled:                     true;
        columns:                     1;
        lines:                       9;
        cycle:                       true;
        dynamic:                     true;
        scrollbar:                   true;
        layout:                      vertical;
        reverse:                     false;
        fixed-height:                true;
        fixed-columns:               false;

        spacing:                     5px;
        margin:                      0px;
        padding:                     0px;
        border:                      0px solid;
        border-radius:               0px;
        border-color:                @selected;
        background-color:            transparent;
        text-color:                  @foreground;
        cursor:                      "default";
    }
    scrollbar {
        handle-width:                5px ;
        handle-color:                @selected;
        border-radius:               0px;
        background-color:            @background-alt;
    }

    /*****----- Elements -----*****/
    element {
        enabled:                     true;
        spacing:                     10px;
        margin:                      0px;
        padding:                     5px;
        border:                      0px solid;
        border-radius:               10px;
        border-color:                @selected;
        background-color:            transparent;
        text-color:                  @foreground;
        cursor:                      pointer;
    }
    element normal.normal {
        background-color:            transparent;
        text-color:                  @foreground;
    }

    element selected.normal {
        background-image:            @selected;
        text-color:                  @background;
    }
    element-icon {
        background-color:            transparent;
        text-color:                  inherit;
        size:                        32px;
        cursor:                      inherit;
    }
    element-text {
        background-color:            transparent;
        text-color:                  inherit;
        highlight:                   inherit;
        cursor:                      inherit;
        vertical-align:              0.5;
        horizontal-align:            0.0;
    }

    /*****----- Message -----*****/
    error-message {
        padding:                     15px;
        border:                      0px solid;
        border-radius:               10px;
        border-color:                @selected;
        background-color:            @background;
        text-color:                  @foreground;
    }
    textbox {
        background-color:            @background;
        text-color:                  @foreground;
        vertical-align:              0.5;
        horizontal-align:            0.0;
        highlight:                   none;
    }
  '';

  programs.rofi = {
    enable = true;
    package = pkgs.rofi-wayland;
  };
}