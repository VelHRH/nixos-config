let
  colors = import ../theme;
in
{
  scheme = colors.scheme;
  author = colors.author;

  base00 = colors.background;
  base01 = colors.mantle;
  base02 = colors.grey-dark;
  base03 = colors.grey;
  base04 = colors.grey-light;
  base05 = colors.text;
  base06 = colors.primary-pale;
  base07 = colors.highlight;
  base08 = colors.error;
  base09 = colors.success;
  base0A = colors.yellow;
  base0B = colors.secondary;
  base0C = colors.info;
  base0D = colors.primary;
  base0E = colors.warning;
  base0F = colors.purple;
}
