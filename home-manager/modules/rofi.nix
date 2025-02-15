{ pkgs, config, ...}: 
let
  colors = import ./theme;
in 
{
  xdg.configFile."rofi/config.rasi".text = ''
    /*****----- Configuration -----*****/
    configuration {
        show-icons:              true;
        display-drun:            " ";
        display-run:             " ";
        display-filebrowser:      " ";
        display-window:          " ";
        drun-display-format:     "{name}";
        window-format:           "{w}{c}";
    }

    /*****----- Global Properties -----*****/
    * {
        active-background:       #${colors.primary};
        active-foreground:       #${colors.text};
        normal-background:       #${colors.background};
        normal-foreground:       #${colors.text};
        urgent-background:       #${colors.error};
        urgent-foreground:       #${colors.text};

        alternate-active-background:    #${colors.background};
        alternate-active-foreground:    #${colors.text};
        alternate-normal-background:    #${colors.background};
        alternate-normal-foreground:    #${colors.text};
        alternate-urgent-background:    #${colors.background};
        alternate-urgent-foreground:    #${colors.text};

        selected-active-background:     #${colors.error};
        selected-active-foreground:     #${colors.text};
        selected-normal-background:     #${colors.primary};
        selected-normal-foreground:     #${colors.text};
        selected-urgent-background:     #${colors.yellow};
        selected-urgent-foreground:     #${colors.text};

        background-color:        #${colors.background};
        background:              #${colors.background};
        foreground:              #${colors.text};
        border-color:            #${colors.background};
        spacing:                 2;
    }

    /*****----- Main Window -----*****/
    window {
        transparency:            "real";
        enabled:                 true;
        location:                center;
        anchor:                  center;
        fullscreen:              true;
        cursor:                  "default";
    }

    /*****----- Main Box -----*****/
    mainbox {
        enabled:                 true;
        padding:                 10%;
        children:                [ "inputbar", "listview" ];
        spacing:                 8%;
    }

    /*****----- Inputbar -----*****/
    inputbar {
        enabled:                 true;
        spacing:                 10px;
        padding:                 15px;
        border:                  0.2% solid;
        border-radius:           12px;
        border-color:            @selected-normal-background;
        background-color:        transparent;
        text-color:              @foreground;
        children:                [ "prompt", "entry" ];
        margin:                  0% 30% 0% 30%;
    }

    prompt {
        enabled:                 true;
    }

    textbox-prompt-colon {
        enabled:                 true;
        expand:                  false;
        str:                     "::";
        background-color:        inherit;
        text-color:              inherit;
    }

    entry {
        enabled:                 true;
        background-color:        inherit;
        text-color:              inherit;
        cursor:                  text;
        placeholder:             "Search...";
        placeholder-color:       inherit;
    }

    /*****----- Listview -----*****/
    listview {
        padding:                 10px;
        columns:                 6;
        lines:                   4;
        cycle:                   false;
        dynamic:                 true;
        flow:                    horizontal;
        border:                  0;
        spacing:                 2%;
        background-color:        transparent;
        text-color:              @foreground;
        cursor:                  "default";
    }

    /*****----- Elements -----*****/
    element {
        enabled:                 true;
        orientation:             vertical;
        spacing:                 10px;
        padding:                 20px;
        border-radius:           10px;
        background-color:        transparent;
        text-color:              @foreground;
        cursor:                  pointer;
    }

    element normal.normal {
        background-color:        transparent;
        text-color:              @foreground;
    }

    element selected.normal {
        background-image:        @selected-normal-background;
        text-color:              @background;
        padding:                 2.5% 0% 2.5% 0%;
    }

    element-icon {
        size:                    7%;
    }

    scrollbar {
        handle-width:            5px;
        handle-color:            @selected;
        border-radius:           0px;
        background-color:        @background-alt;
    }

    element-text {
        expand:                  true;
        horizontal-align:        0.5;
        vertical-align:          0.5;
        margin:                  0.5% 0.5% -0.5% 0.5%;
    }
  '';

  programs.rofi = {
    enable = true;
    package = pkgs.rofi-wayland;
  };

  home.packages = with pkgs; [
    rofi-power-menu
  ];
}
