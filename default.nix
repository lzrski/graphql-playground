with import <nixpkgs> {}; {
  nodeEnv = stdenv.mkDerivation {
    name = "graphql-playground";
    buildInputs = [ inotify-tools httpie ];
    shellHook = ''
    # Start user's preffered shell
    exec ${builtins.getEnv "SHELL"}
    '';
  };
}
