{ lib, ... }:
{
    programs.wofi = {
        enable = true;
        settings = {
            allow_images = true;
            width = "50%";
            hide_scroll = true;
            term = "foot";
            show = "drun";
        };
        style = import ./style.nix;
    };
}