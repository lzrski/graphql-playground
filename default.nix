with import <nixpkgs> {}; {
  nodeEnv = stdenv.mkDerivation {
    name = "graphql-playground";
    buildInputs = [ inotify-tools httpie ];
  };
}
