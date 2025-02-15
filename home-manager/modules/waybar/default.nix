{
  programs.waybar = {
    enable = true;
    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        height = 30;
        margin-top = 0;
        margin-bottom = 0;
        margin-left = 0;
        margin-right = 0;
        modules-left = ["hyprland/workspaces"];
        modules-center = [];
        modules-right = [ "pulseaudio" "battery" "clock" "custom/power" "tray"];

        "hyprland/workspaces" = {
          disable-scroll = true;
          show-special = true;
          special-visible-only = true;
          all-outputs = false;
          format = "{id}"; 
          persistent-workspaces = {
            "*" = 3;
          };
        };

        clock= {
          format = " {:%a, %d %b, %I:%M %p}";
          tooltip= "true";
          tooltip-format= "{calendar}";
          format-alt= "{:%I:%M %p}";
        };

        "pulseaudio" = {
          format = "{icon} {volume}%";
          format-bluetooth = "{icon} {volume}% 󰂯"; 
          format-muted = "󰝟"; 
          format-icons = {
            "headphones" = "󰋋"; 
            "handsfree" = "󰋎"; 
            "headset" = "󰋎";
            "phone" = "󰣏"; 
            "portable" = "󰣏"; 
            "car" = "󰄜"; 
            "default" = ["󰕿" "󰖀"];
          };
          on-click = "pavucontrol";
        };

        "battery" = {
          states = {
            warning = 30;
            critical = 1;
          };
          format = "{icon} {capacity}%";
          format-charging = " {capacity}%";
          format-alt = "{time} {icon}";
          format-icons = ["" "" "" "" ""];
        };

        "custom/power" = {
          format = "⏻";
          tooltip = true;
          tooltip-format = "Power Menu";
          on-click = "rofi -show power-menu -modi power-menu:rofi-power-menu";
          on-click-right = "systemctl poweroff";
        };

        "tray" = {
          icon-size = 14;
          spacing = 1;
        };
      };
    };
  };
  home.file.".config/waybar/style.css".text = import ./style.nix;
}
