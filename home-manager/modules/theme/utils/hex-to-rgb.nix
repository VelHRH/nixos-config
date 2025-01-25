hex:
  let
    toInt = x: builtins.unsafeDiscardStringContext (builtins.readFile (builtins.toFile "hex" x));
    r = toInt ("0x" + builtins.substring 0 2 hex);
    g = toInt ("0x" + builtins.substring 2 2 hex);
    b = toInt ("0x" + builtins.substring 4 2 hex);
  in
"rgb(${r}, ${g}, ${b})"