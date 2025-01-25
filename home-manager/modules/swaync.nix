{
  services.swaync = {
    enable = true;
    settings = {
      positionX = "right";
      positionY = "top";
      control-center-radius = 8; 
      fit-to-screen = true;
      layer-shell = true;
      layer = "overlay";
      control-center-layer = "overlay";
      cssPriority = "user";
      notification-icon-size = 64;
      notification-body-image-height = 120;
      notification-body-image-width = 250;
      timeout = 8;  
      timeout-low = 4;
      timeout-critical = 0; 

      widgets = [
        "inhibitors"
        "dnd"
        "mpris"
        "notifications"
      ];

      widget-config = {
        title = {
          text = "🔔 Notifications";
          clear-all-button = true;
          button-text = "🗑 Clear";
        };
        dnd = {
          text = "🔕 Do Not Disturb";
        };
        mpris = {
          image-size = 96;
          blur = true;
        };
      };
    };
  };
}